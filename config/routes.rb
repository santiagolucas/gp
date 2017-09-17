Rails.application.routes.draw do
  resources :secaos
  resources :zonas
  resources :categoria
  devise_for :users
  root to: "solicitantes#index"
  resources :andamento_solicitacao_enviadas
  resources :andamento_solicitacao_recebidas
  resources :estados
  resources :funcionarios
  resources :municipios
  resources :processos
  resources :solicitacao_enviadas
  resources :solicitacao_recebidas
  resources :solicitantes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
