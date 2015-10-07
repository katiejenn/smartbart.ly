Rails.application.routes.draw do

 root 'stations#index'

  get '/sign_in', to:'sessions#new'
  post "/sessions", to: "sessions#create"

  resources :stations, :users

  post '/tips', to: "tips#create"

end
  