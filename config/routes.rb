Rails.application.routes.draw do
  # register = view
  # users/create = controller
  get 'register', to: 'users#new', as: 'new_user'
  post 'users/create', to: 'users#create', as: 'create_new_user'

  delete 'users/destroy/:id', to: 'users#destroy', as: 'delete_profile'

  # edit = view
  # sessions/update = controller
  get 'edit', to: 'sessions#edit', as: 'user_profile'
  patch 'sessions/update/:id', to: 'sessions#update', as: 'update_user_profile'

  # login = view
  # sessions/create = controller
  get 'login', to: 'sessions#new', as: 'login_form'
  post 'sessions/create', to: 'sessions#create', as: 'login_method'

  get 'logout', to: 'sessions#destroy', as: 'logout'

  # contacts = view
  # contacts/create = create
  get 'contact', to: 'contacts#new', as: 'contact_form'
  post 'contact/create', to: 'contacts#create', as: 'contact_method'

  get 'about', to: 'about#index', as: 'about'

  get 'discography', to: 'discography#index', as: 'discography'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
