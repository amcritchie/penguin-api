Rails.application.routes.draw do
  resources :listings
  resources :moment_mints
  resources :moments, only: [:index]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "moments#index"
end
