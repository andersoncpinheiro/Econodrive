Rails.application.routes.draw do
  resources :car_manufacturers, only: [:index, :new, :create, :edit, :update, :destroy]

   get '/home', to: 'home#index'
   get '/brand_model', to: 'brand_model#index'
   get '/fuel_register', to: 'fuel_register#index'
   get '/car_manufacturer', to: 'car_manufacturer#index'
end