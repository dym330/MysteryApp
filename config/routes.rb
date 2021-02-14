Rails.application.routes.draw do
  root 'mysteries#index'
  resources :mysteries
end
