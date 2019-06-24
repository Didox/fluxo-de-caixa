class ApplicationController < ActionController::Base
  before_action  :authenticate_user!

  def authenticate_user!
    if cookies[:manobra_admin].blank?
      redirect_to "/login"
    end
  end

  def administrador
    if cookies[:manobra_admin].present?
      return @adm if @adm.present?
      @adm = Administrador.find(JSON.parse(cookies[:manobra_admin])["id"])
      return @adm
    end
  end
end
