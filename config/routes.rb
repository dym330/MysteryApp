Rails.application.routes.draw do
  root 'mysteries#index'
  resources :mysteries
  resources :users
end
