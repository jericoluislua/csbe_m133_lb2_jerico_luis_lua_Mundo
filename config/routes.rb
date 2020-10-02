Rails.application.routes.draw do
  get 'register', to: 'users#new', as: 'new_user'
  post 'users/create', to: 'users#create', as: 'create_new_user'
  get 'profile', to: 'sessions#profile', as: 'profile'
  get 'login', to: 'sessions#new', as: 'login_form'
  post 'sessions/create', to: 'sessions#create', as: 'login_method'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'contact', to: 'contact#index', as: 'contact'
  get 'about', to: 'about#index', as: 'about'
  get 'discography', to: 'discography#index', as: 'discography'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
