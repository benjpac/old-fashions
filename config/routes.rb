Rails.application.routes.draw do
  # get 'carts/show'
  #
  # get 'order_items/create'
  #
  # get 'products/index'

  resource :cart, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resources :order_items
  end


end
