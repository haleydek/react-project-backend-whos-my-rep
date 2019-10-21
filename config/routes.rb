Rails.application.routes.draw do
  get '/users/:id', to: 'users#show'

  post '/signup', to: 'users#create'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/badges', to: 'badges#index'

  patch '/users/:id', to: 'users#update'
end
