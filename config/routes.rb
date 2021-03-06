Rails.application.routes.draw do
  resources :category_stories
  resources :categories
  resources :games
  resources :sentences
  resources :stories
  resources :tellers
  resources :teams
  resources :sessions
  get '/login', to: "sessions#new", as: :login
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy", as: :logout
  get '/', to: "homes#index", as: :home

  # make a route for games/begin, which goes to the correct method (games#new)

  # get '/logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
