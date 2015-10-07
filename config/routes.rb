Rails.application.routes.draw do

  get 'lines/index'

  get 'lines/show'

 root 'stations#index'

  get '/sign_in', to:'sessions#new'
  post "/sessions", to: "sessions#create"

  post '/tips', to: "tips#create"

  resources :stations, :users, :lines

end
  