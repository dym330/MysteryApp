Rails.application.routes.draw do
  root 'mysteries#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :mysteries
  resources :users
end
