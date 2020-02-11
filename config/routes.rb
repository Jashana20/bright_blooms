Rails.application.routes.draw do
  resources :plants
  resources :users
  resources :gardens
  resources :conditions, only: [:show]
  resources :instructions
end
