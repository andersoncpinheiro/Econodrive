Rails.application.routes.draw do
  resources :car_manufacturers, only: [:index, :new, :create, :edit, :update, :destroy, :show]
  resources :fuel_registers, only: [:index, :new, :create, :edit, :update, :destroy, :show]

   get '/home', to: 'home#index'
   get '/brand_models', to: 'brand_models#index'
   get '/fuel_registers', to: 'fuel_registers#index'
   get '/car_manufacturers', to: 'car_manufacturers#index'
end