Rails.application.routes.draw do


  root 'welcome#index'

  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'

  get '/sign_in', to:'sessions#new'
  post "/sessions", to: "sessions#create"

  get 'stations/index', to: "stations#index"
  get 'stations/:id', to: "stations#show"

  post '/tips', to: "tips#create"

end
