Rails.application.routes.draw do

  root to: 'home#index'

  get    '/login', to: "sessions#new"
  post   '/login',   to: "sessions#create"
  delete '/logout',  to: "sessions#destroy"

  resources :users, only: [:new, :create]
  resources :sites, only: [:new, :create, :index, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
