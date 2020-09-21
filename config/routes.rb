Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login_form'
  post 'sessions', to: 'sessions#create', as: 'sign_in_method'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'contact', to: 'contact#index', as: 'contact'
  get 'about', to: 'about#index', as: 'about'
  get 'discography', to: 'discography#index', as: 'discography'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
