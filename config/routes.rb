Rails.application.routes.draw do
  resources :tipos_saidas
  resources :saidas
  resources :pedidos do 
    resources :pedido_produtos
  end
  resources :veiculos
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
