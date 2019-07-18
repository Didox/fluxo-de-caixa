class TiposSaidasController < ApplicationController
  before_action :set_tipos_saida, only: [:show, :edit, :update, :destroy]

  # GET /tipos_saidas
  # GET /tipos_saidas.json
  def index
    @tipos_saidas = TiposSaida.all
  end

  # GET /tipos_saidas/1
  # GET /tipos_saidas/1.json
  def show
  end

  # GET /tipos_saidas/new
  def new
    @tipos_saida = TiposSaida.new
  end

  # GET /tipos_saidas/1/edit
  def edit
  end

  # POST /tipos_saidas
  # POST /tipos_saidas.json
  def create
    @tipos_saida = TiposSaida.new(tipos_saida_params)

    respond_to do |format|
      if @tipos_saida.save
        format.html { redirect_to tipos_saidas_url, notice: 'Tipos de saida foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @tipos_saida }
      else
        format.html { render :new }
        format.json { render json: @tipos_saida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_saidas/1
  # PATCH/PUT /tipos_saidas/1.json
  def update
    respond_to do |format|
      if @tipos_saida.update(tipos_saida_params)
        format.html { redirect_to tipos_saidas_url, notice: 'Tipos de saida foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @tipos_saida }
      else
        format.html { render :edit }
        format.json { render json: @tipos_saida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_saidas/1
  # DELETE /tipos_saidas/1.json
  def destroy
    @tipos_saida.destroy
    respond_to do |format|
      format.html { redirect_to tipos_saidas_url, notice: 'Tipos de saida foi apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_saida
      @tipos_saida = TiposSaida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_saida_params
      params.require(:tipos_saida).permit(:tipo)
    end
end
