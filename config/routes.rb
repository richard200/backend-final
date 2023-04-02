Rails.application.routes.draw do
  resources :categories
  resources :reviews
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/login", to: "users#login"
  get "/me", to: "users#show"
  delete "/logout", to: "session#destroy"

  # post "/login", to: "users#login"
  # post '/register', to: 'users#create'
end
