Rails.application.routes.draw do
  get  "/signup", to: "users#new"
  post "/signup", to: "users#create"

  resources :comments
  resources :posts
  resources :categories
  resources :users
  # root 'posts#index'
  # get "/posts", to: "posts#index"
  # get "/about", to: "pages#about"
  # get "/blog", to: "pages#blog"
  # get "/postdetails", to: "pages#postdetails"
  # get "/contact", to: "pages#contact"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 