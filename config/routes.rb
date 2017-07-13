Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/create'

  devise_for :users, :controllers=>{ registrations: 'registrations', sessions: 'sessions'}


  root 'products#index'

  resource :cart, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products

  resources :order_products

  resources :charges

end
