Rails.application.routes.draw do

 root 'stations#index'

  get '/sign_in', to:'sessions#new'
  post "/sessions", to: "sessions#create"

  resources :stations, :users

  post 'favorites/new/:id', to: 'favorites#create'
  delete 'favorites/:id', to: 'favorites#destroy'

  post '/tips', to: "tips#create"


end
  