Rails.application.routes.draw do
  resources :appointments
  resources :pets
  devise_for :customers
  devise_for :admins
  devise_for :doctors
  resources :doctors

  root 'pages#home'
end
