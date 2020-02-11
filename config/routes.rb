Rails.application.routes.draw do
  resources :plants
  resources :users
  resources :gardens
  resources :conditions
  resources :instructions
  resources :sessions, only: [:create]
  get '/', to: 'users#index'
end
