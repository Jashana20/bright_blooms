Rails.application.routes.draw do
  resources :plants
  resources :users
  resources :gardens
  resources :conditions, only: [:show]
  resources :instructions
  resources :sessions, only: [:create]
  get '/', to: 'users#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
