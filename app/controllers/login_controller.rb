class LoginController < ApplicationController
  skip_before_action :authenticate_user!
  layout 'login'

  def index;end

  def logar
    user = Administrador.where(email: params["login"]["email"], senha: params["login"]["senha"])
    if user.present?
      time = params["login"]["lembrar"] == "1" ? 1.year.from_now : 30.minutes.from_now
      user = user.first
      value = {
        id: user.id,
        nome: user.nome,
        email: user.email
      }
      cookies[:manobra_admin] = { value: value.to_json, expires: time, httponly: true }

      redirect_to root_path
    else
      flash[:erro] = "Email ou senha inválidos"
      redirect_to login_path
    end
  end

  def deslogar
    cookies[:manobra_admin] = nil
    redirect_to login_path
  end

end
