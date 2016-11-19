Rails.application.routes.draw do

  root :to => 'pages#index'

  resources :users
  #
  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
  # 
  # get 'sessions/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


end
