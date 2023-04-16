Rails.application.routes.draw do
  get 'cart_items/create'
  get 'carts/show'
  get 'carts/checkout'
  devise_for :users
  resources :products, only: [:index, :show]
  resources :cart_items, only: [:create, :destroy]
  resources :carts do
    post :checkout, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
