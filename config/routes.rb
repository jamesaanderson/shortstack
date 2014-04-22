Shortstack::Application.routes.draw do
  root 'pages#home'

  resources :merchants, only: [:show]

  get '/search', to: 'search#index'
  get '/auth/:provider/callback', to: 'sessions#create'
end
