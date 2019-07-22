class ItensFaturasController < ApplicationController
  before_action :set_itens_fatura, only: [:show, :edit, :update, :destroy]
  before_action :set_fatura

  # GET /itens_faturas
  # GET /itens_faturas.json
  def index
    @itens_faturas = ItensFatura.where(fatura_id: @fatura.id)
  end

  # GET /itens_faturas/1
  # GET /itens_faturas/1.json
  def show
  end

  # GET /itens_faturas/new
  def new
    @itens_fatura = ItensFatura.new
  end

  # GET /itens_faturas/1/edit
  def edit
  end

  # POST /itens_faturas
  # POST /itens_faturas.json
  def create
    @itens_fatura = ItensFatura.new(itens_fatura_params)
    @itens_fatura.fatura = @fatura

    respond_to do |format|
      if @itens_fatura.save
        format.html { redirect_to fatura_itens_faturas_url(@fatura), notice: 'Item da fatura foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @itens_fatura }
      else
        format.html { render :new }
        format.json { render json: @itens_fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itens_faturas/1
  # PATCH/PUT /itens_faturas/1.json
  def update
    respond_to do |format|
      if @itens_fatura.update(itens_fatura_params)
        format.html { redirect_to fatura_itens_faturas_url(@fatura), notice: 'Item da fatura foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @itens_fatura }
      else
        format.html { render :edit }
        format.json { render json: @itens_fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itens_faturas/1
  # DELETE /itens_faturas/1.json
  def destroy
    @itens_fatura.destroy
    respond_to do |format|
      format.html { redirect_to fatura_itens_faturas_url(@fatura), notice: 'Item da fatura foi apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_fatura
      @fatura = Fatura.find(params[:fatura_id])
    end

    def set_itens_fatura
      @itens_fatura = ItensFatura.find(params[:id])
    end

    def itens_fatura_params
      params.require(:itens_fatura).permit(:fatura_id, :placa, :descricao, :data_inicio, :data_fim, :valor)
    end
end
