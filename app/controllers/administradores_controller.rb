class AdministradoresController < ApplicationController
  before_action :set_administrador, only: [:show, :edit, :update, :destroy]

  # GET /administradores
  # GET /administradores.json
  def index
    @administradores = Administrador.all
  end

  # GET /administradores/1
  # GET /administradores/1.json
  def show
  end

  # GET /administradores/new
  def new
    @administrador = Administrador.new
  end

  # GET /administradores/1/edit
  def edit
  end

  # POST /administradores
  # POST /administradores.json
  def create
    @administrador = Administrador.new(administrador_params)

    respond_to do |format|
      if @administrador.save
        format.html { redirect_to @administrador, notice: 'Administrador foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @administrador }
      else
        format.html { render :new }
        format.json { render json: @administrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administradores/1
  # PATCH/PUT /administradores/1.json
  def update
    respond_to do |format|
      if @administrador.update(administrador_params)
        format.html { redirect_to @administrador, notice: 'Administrador foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @administrador }
      else
        format.html { render :edit }
        format.json { render json: @administrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administradores/1
  # DELETE /administradores/1.json
  def destroy
    @administrador.destroy
    respond_to do |format|
      format.html { redirect_to administradores_url, notice: 'Administrador foi apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrador
      @administrador = Administrador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrador_params
      params.require(:administrador).permit(:nome, :email, :senha)
    end
end
