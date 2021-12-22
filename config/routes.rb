Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get "/", to: "personas#index"

  #root "sessions#home"

  #resources :accounts, only: [:new, :create, :destroy]

  get "/", to: "personas#index"
  get "/login", to: "sessions#get_login_params"
  post "/login", to: "sessions#login"
  get "/create", to: "accounts#new"
  post "/create", to: "accounts#create"
  get "/logout", to: "sessions#destroy"
  post "/logout", to: "sessions#destroy"
  get "/home", to: "personas#home"
  get "/destroy", to: "sessions#destroy"
end
