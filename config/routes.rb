Rails.application.routes.draw do
  resources :activities
  resources :achievements
  resources :events
  resources :organizations
  resources :donors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
