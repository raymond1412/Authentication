Rails.application.routes.draw do

  resources:users
  resources:sessions, only: [:new, :create, :destroy]
  
  root to: 'users#index'

  get '/users' => 'users#index'
  post '/users' => 'users#create'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  delete '/users/:id' => 'users#destroy'


  get '/users/:id/edit' => 'users#edit', as: 'edit_page'
  patch '/users/:id' => 'users#update'
  


  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create' 

  get '/logout', to: 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'   

  get'/sessions', to: 'sessions#create'
  
end  
