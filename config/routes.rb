Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get 'users/new', to: 'users#new'
  post 'users/new', to: 'users#create'
  get  'static_pages/help', to: 'static_pages#help'
  get  'static_pages/about'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get   '/create_event', to: 'event#new'
  post  '/create_event', to: 'event#create'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
