Rails.application.routes.draw do
  root 'users#index'
  get 'signup', to: 'users#new' 
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
