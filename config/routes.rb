Rails.application.routes.draw do
  # register = view
  # users/create = controller
  get 'register', to: 'users#new', as: 'new_user'
  post 'users/create', to: 'users#create', as: 'create_new_user'

  delete 'users/destroy/:id', to: 'users#destroy', as: 'delete_profile'

  # profile = view
  # sessions/update = controller
  get 'profile', to: 'sessions#profile', as: 'user_profile'
  patch 'sessions/update', to: 'sessions#update', as: 'update_user_profile'

  # login = view
  # sessions/create = controller
  get 'login', to: 'sessions#new', as: 'login_form'
  post 'sessions/create', to: 'sessions#create', as: 'login_method'

  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'contact', to: 'contact#index', as: 'contact'

  get 'about', to: 'about#index', as: 'about'

  get 'discography', to: 'discography#index', as: 'discography'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
