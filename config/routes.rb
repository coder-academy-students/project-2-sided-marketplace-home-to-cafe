Rails.application.routes.draw do
  resources :products
  resources :product_images
  resources :ingredients
  resources :reviews
  resources :cafe_owner_profiles
  resources :home_baker_profiles
 
 #devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
