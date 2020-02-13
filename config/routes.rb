Rails.application.routes.draw do
  resources :plants
  resources :users
  resources :gardens
  resources :conditions, only: [:show]
  resources :instructions
  
  get '/', to: 'users#index'
  get '/login', to: 'sessions#new', as: "new_login"
  post '/login', to: 'sessions#create'
  get '/sessions', to: 'sessions#destroy'
  get '/gardens/:id/add_plant', to: 'gardens#add_plant', as: "add_plant"
  post 'gardens/:id/add_plant', to: 'gardens#add_direct'
  
end
