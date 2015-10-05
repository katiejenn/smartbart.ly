Rails.application.routes.draw do

  get 'stations/index'

  get 'stations/show'

  root 'welcome#index'

  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'

  get '/sign_in', to:'sessions#new'
  post "/sessions", to: "sessions#create"
end
