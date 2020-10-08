Rails.application.routes.draw do
  get 'carts/index'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  resources :users
  resources :products
  resources :carts
  
  resources :category
  resources :orders
  resources :order_derails


end
