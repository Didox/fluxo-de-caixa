Rails.application.routes.draw do
  resources :clientes
  resources :administradores
  resources :pedidos do 
  	resources :pedido_produtos
  end
  
  resources :produtos
  root to: "home#index"

  get '/login', to: 'login#index'
  post '/login', to: 'login#logar'
  get '/sair', to: 'login#deslogar'
end
