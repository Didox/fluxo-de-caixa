class ApplicationController < ActionController::Base
  before_action  :authenticate_user!, :cross_domain

  def authenticate_user!
    return if request.path_parameters[:format] == 'json'

    if cookies[:fluxo_de_caixa_admin].blank?
      redirect_to "/login"
    else
      administrador
    end
  end

  def administrador
    if cookies[:fluxo_de_caixa_admin].present?
      return @adm if @adm.present?
      @adm = Administrador.find(JSON.parse(cookies[:fluxo_de_caixa_admin])["id"])
      return @adm
    end
  end

  def cross_domain
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, HEAD, DELETE'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, MaratonaKeyAccess'
  end

  def options
    cross_domain
    render json: {}, status: 200
  end
end
