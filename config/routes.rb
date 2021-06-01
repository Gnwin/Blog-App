Rails.application.routes.draw do
  root 'posts#index'
  get 'about' => 'pages#about'
  get 'blog' => 'pages#blog'
  get 'postdetails' => 'pages#postdetails'
  get 'contact' => 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 