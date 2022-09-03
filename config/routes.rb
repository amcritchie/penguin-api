Rails.application.routes.draw do
  resources :external_requests, only: [:index]
  resources :listings
  resources :moment_mints
  resources :moments, only: [:index]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Endpoint for processing new flow listings
  post "api/listing/new" => "listings#new"

  # Defines the root path route ("/")
  root "moments#index"
end
