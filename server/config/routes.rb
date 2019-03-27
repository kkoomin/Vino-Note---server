Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wines
  resources :logs
  resources :smells

  #delete as needed
  resources :looks
  resources :tastes
  ##################################


  resources :users, only: [:create]

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
