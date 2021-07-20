Rails.application.routes.draw do
  resources :comments
  
  resources :posts do
    resources :comments, only: [:new, :create, :index]
  end

  resources :categories

  resources :users do
    resources :posts, only: [:new, :create, :index]
  end

  root "sessions#home"

  get  "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  get "/logged", to: "users#show"


  get "/about", to: "pages#about"
  # get "/blog", to: "pages#blog"
  # get "/postdetails", to: "pages#postdetails"
  get "/contact", to: "pages#contact"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# NESTED ROUTES
# new, show or index

# '/users'

# '/users/:id/posts'
# '/users/:id/comments'


# '/posts'

# '/posts/:id/comments'
