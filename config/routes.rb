Rails.application.routes.draw do

  root to: 'visitors#index'

  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users

  get '/back_log' => 'sprint#show_backlog'
  get '/sprint' => 'sprint#show'
  get '/sprint/:id', to: 'sprint#show'
  get '/set_owner', to: 'sprint#set_owner'
  get '/set_task_sprint', to: 'sprint#set_task_sprint'

  get '/update_progress' => 'sprint#update_progress'
  get '/update_tasks_view/:sprint' => 'sprint#update_tasks_view'
end
