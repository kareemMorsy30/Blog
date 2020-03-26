Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts
  resources :comments

  root 'posts#index'

  post '/posts/:id', to: 'comments#create'
end
