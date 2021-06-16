Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :categories
  resources :users
  
  root "sessions#home"

  get  "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy"

  # root 'posts#index'
  # get "/posts", to: "posts#index"
  # get "/about", to: "pages#about"
  # get "/blog", to: "pages#blog"
  # get "/postdetails", to: "pages#postdetails"
  # get "/contact", to: "pages#contact"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 