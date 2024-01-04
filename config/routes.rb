Rails.application.routes.draw do
  resources :banks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/dashboard", to: "dashboard#index"
  get "/supplier/new", to: "supplier#new"
  post "/supplier", to: "supplier#create"

end
