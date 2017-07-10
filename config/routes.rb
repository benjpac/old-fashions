Rails.application.routes.draw do
  devise_for :users
  # get 'carts/show'
  #
  # get 'order_items/create'
  #
  # get 'products/index'

  root 'products#index'

  resource :cart, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products

  resources :order_items


end
