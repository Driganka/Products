Rails.application.routes.draw do
  resources :product_images
  resources :products
  get 'home/about'
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
