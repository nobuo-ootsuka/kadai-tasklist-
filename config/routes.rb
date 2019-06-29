Rails.application.routes.draw do
  root to: 'tasks#index'
   
  resources :tasks
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
end