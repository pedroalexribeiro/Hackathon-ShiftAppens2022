Rails.application.routes.draw do
  devise_for :organizations
  devise_for :donors
  get 'homepage/index'
  resources :activities
  resources :achievements
  resources :events
  resources :organizations
  resources :donors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homepage#index"
end
