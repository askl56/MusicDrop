Rails.application.routes.draw do

  get 'artists/index'
  get 'artists/show'
  get '/artists', to: 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
