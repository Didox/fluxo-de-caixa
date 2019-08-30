Rails.application.routes.draw do
  resources :funcionarios
  resources :faturas do
    resources :itens_faturas
  end
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

  get '/fluxo-de-caixa', to: 'home#fluxo_caixa'

  get '/login', to: 'login#index'
  post '/login', to: 'login#logar'
  get '/sair', to: 'login#deslogar'

  post '/administradores/login', to: 'administradores#login'

  match '/pedidos/:pedido_id', to: 'application#options', via: :options
  match '/pedidos', to: 'application#options', via: :options
  match '/administradores', to: 'application#options', via: :options
  match '/administradores/login', to: 'application#options', via: :options
end
