Rails.application.routes.draw do
  devise_for :users
  resources :g_tipo_usuarios
  resources :o_categorias_servico
  resources :o_tipos_solicitacao
  resources :o_status
  resources :g_tipos_centro_custo
  resources :g_tipos_veiculos
  resources :g_status
  resources :g_tipos_veiculo
  root 'home#index'
  get 'home/index'

  # Rotas Scaffold

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
end
