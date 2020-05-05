Rails.application.routes.draw do
  root to: 'servers#index'

  devise_for :users

  get 'servers' => 'servers#index', as: 'servers'
  post 'servers' => 'servers#create', as: 'servers_create'
  delete 'servers/clear' => 'servers#clear', as: 'servers_clear'
  delete 'servers/:id' => 'servers#destroy', as: 'servers_destroy'
end
