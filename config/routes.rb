Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  devise_for :doctors
  resources :doctors

  root 'pages#home'
end
