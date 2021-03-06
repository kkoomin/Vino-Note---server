Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wines
  resources :logs, only: [:show, :create, :update]
  resources :smells, only: [:show, :create]
  resources :looks, only: [:show, :create]
  resources :tastes, only: [:show, :create]
  resources :users, only: [:create, :update]

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'



  #############################
  get '/users/:id/logs', to:'users#all_logs'
  get '/users/:id/favorite_wine_country', to: 'users#favorite_wine_country'
  get '/users/:id/favorite_wine_variety', to: 'users#favorite_wine_variety'
  get '/users/:id/logs_created_dates', to: 'users#logs_created_dates'
end
