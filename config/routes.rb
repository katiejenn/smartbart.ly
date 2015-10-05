Rails.application.routes.draw do

  root 'welcome#index'

  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
end
