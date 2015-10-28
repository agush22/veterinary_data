Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  devise_for :doctors
  resources :appointments
  resources :pets
  resources :doctors

  get '/doctors' => "doctors#index", as: :admin_root
  get '/appointments/new' => "appointments#new", as: :receptionist_root
  get '/pets/new' => "pets#new", as: :doctor_root
  get '/customer_appointments'=> "appointments#customer", as: :customer_root

  root 'pages#home'
end
