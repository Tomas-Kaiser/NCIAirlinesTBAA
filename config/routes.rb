Rails.application.routes.draw do
  root 'home#index'
  
  resources :users do 
    resources :skills
  end
  
  resources :candidates do
    resources :skills
  end
  resources :sessions, only: [:new, :create, :destroy]
  
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
