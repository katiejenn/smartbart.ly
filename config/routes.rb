Rails.application.routes.draw do

  get 'stations/index'

  get 'stations/show'

  root 'welcome#index'
  
end
