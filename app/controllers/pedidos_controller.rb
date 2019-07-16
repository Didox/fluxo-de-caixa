class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    if params[:statusmudar].present?
      Pedido.where(id: params[:statusmudar]).update_all(status: params[:status])
      redirect_to "/pedidos"
      return
    end
    @pedidos = Pedido.all

    if params[:placa].present?
      @pedidos = @pedidos.where("lower(placa) ilike '%#{params[:placa].downcase}%'")
    end

    if params[:descricao].present?
      @pedidos = @pedidos.where("lower(descricao) ilike '%#{params[:descricao].downcase}%'")
    end

    if params[:emissao_inicio].present?
      @pedidos = @pedidos.where("data_emissao_fatura >= ?", params[:emissao_inicio].to_datetime.beginning_of_day)
    end

    if params[:emissao_fim].present?
      @pedidos = @pedidos.where("data_emissao_fatura <= ?", params[:emissao_fim].to_datetime.end_of_day)
    end

    options = {page: params[:page] || 1, per_page: 10}
    @pedidos = @pedidos.paginate(options)
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to pedidos_url, notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to pedidos_url, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:placa, :data_emissao_fatura, :descricao, :numero_fatura, :data_inicio, :data_fim, :vencimento, :valor)
    end
end
