Rails.application.routes.draw do



  resources :password_resets,     only: [:new, :create, :edit, :update]

  get 'sessions/new'

  resources :users

  resources :account_activations, only: [:edit]

  get 'static_pages/contact'

  get 'static_pages/about'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/login'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
