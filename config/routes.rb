Rails.application.routes.draw do

  get 'tags/new'

  get 'products/new'

  get 'sites/new'

  root to: 'home#index'

  get    '/login', to: "sessions#new"
  post   '/login',   to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"

  resources :users, only: [:new, :create]
  resources :sites
  resources :products
  resources :tags

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
