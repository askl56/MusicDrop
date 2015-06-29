Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/show'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
