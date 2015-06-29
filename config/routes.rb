Rails.application.routes.draw do
  resources :artists, only: :show


  root to: 'visitors#index'
  devise_for :users
  resources :users
end
