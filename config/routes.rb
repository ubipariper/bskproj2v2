Rails.application.routes.draw do

  root to: 'visitors#index'

  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users

  get '/back_log' => 'back_log#show'
  get '/sprint' => 'sprint#show'
end
