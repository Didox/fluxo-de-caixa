class SaidasController < ApplicationController
  before_action :set_saida, only: [:show, :edit, :update, :destroy]

  # GET /saidas
  # GET /saidas.json
  def index
    if params[:statusmudar].present?
      Saida.where(id: params[:statusmudar]).update_all(status: params[:status])
      redirect_to "/saidas"
      return
    end
    @saidas = Saida.all

    if params[:placa].present?
      @saidas = @saidas.where("lower(placa) ilike '%#{params[:placa].downcase}%'")
    end

    if params[:descricao].present?
      @saidas = @saidas.where("lower(descricao) ilike '%#{params[:descricao].downcase}%'")
    end

    if params[:vencimento_inicio].present?
      @saidas = @saidas.where("vencimento >= ?", params[:vencimento_inicio].to_datetime.beginning_of_day)
    else
      params[:vencimento_inicio] = Time.now.to_datetime.beginning_of_month.strftime("%Y-%m-%d")
      @saidas = @saidas.where("vencimento >= ?", Time.now.to_datetime.beginning_of_month)
    end

    if params[:vencimento_fim].present?
      @saidas = @saidas.where("vencimento <= ?", params[:vencimento_fim].to_datetime.end_of_day)
    else
      params[:vencimento_fim] = Time.now.to_datetime.end_of_month.strftime("%Y-%m-%d")
      @saidas = @saidas.where("vencimento <= ?", Time.now.to_datetime.end_of_month)
    end

    @saidas_totais = @saidas
    options = {page: params[:page] || 1, per_page: 10}
    @saidas = @saidas.paginate(options)
  end

  # GET /saidas/1
  # GET /saidas/1.json
  def show
  end

  # GET /saidas/new
  def new
    @saida = Saida.new
  end

  # GET /saidas/1/edit
  def edit
  end

  # POST /saidas
  # POST /saidas.json
  def create
    @saida = Saida.new(saida_params)

    respond_to do |format|
      if @saida.save
        format.html { redirect_to @saida, notice: 'Saida foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @saida }
      else
        format.html { render :new }
        format.json { render json: @saida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saidas/1
  # PATCH/PUT /saidas/1.json
  def update
    respond_to do |format|
      if @saida.update(saida_params)
        format.html { redirect_to @saida, notice: 'Saida foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @saida }
      else
        format.html { render :edit }
        format.json { render json: @saida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saidas/1
  # DELETE /saidas/1.json
  def destroy
    @saida.destroy
    respond_to do |format|
      format.html { redirect_to saidas_url, notice: 'Saida foi apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saida
      @saida = Saida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saida_params
      params.require(:saida).permit(:placa, :data_emissao_fatura, :descricao, :numero_fatura, :vencimento, :valor)
    end
end
