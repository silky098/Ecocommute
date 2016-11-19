Rails.application.routes.draw do

  root :to => 'pages#home'

  get '/users/edit' => 'users#edit', :as => 'edit_user'
  resources :users, :only => [:new, :create, :index, :update, :show]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
