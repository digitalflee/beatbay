Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  root to: "producers#index"
  
  resources :artists
  resources :contracts
  resources :beats, only: [:show]
  resources :producers, only: [:index, :show]
  resources :sessions

  get "/", to: "producers#index"
  post "/sessions/reset", to: "sessions#reset"
  post "/sessions/new", to: "sessions#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: 'logout' 
end
