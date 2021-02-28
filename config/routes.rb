Rails.application.routes.draw do
  get '/login' => 'user_sessions#new'
  post '/login' => 'user_sessions#create'
  post '/logout' => 'user_sessions#destroy'
  resources :users
  resources :cats do
    resources :contents
  end
  root to: 'catchers#new'
  end
