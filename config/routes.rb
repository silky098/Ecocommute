Rails.application.routes.draw do

  root :to => 'pages#index'

  resources :users

  get 'sessions/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
