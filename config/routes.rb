Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :secrets, only: [:show]
  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  post '/sessions/destroy', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show'
end
