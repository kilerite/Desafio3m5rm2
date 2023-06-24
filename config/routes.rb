Rails.application.routes.draw do


  resources :documentary_films
  resources :ceries
  resources :movies
  
  root "home#index"
  

  #xxxget 'documentary_films/create'
  #xxxget 'ceries/create'
  #xxxget 'movies/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  





  #xxxxget 'documentary_films/index'
  #xxxxget 'documentary_films/new'
  
   
  #xxxxget 'ceries/index'
  #xxxxget 'ceries/new'
  
  
  #xxxxget 'movies/index', to: 'movies#index' NO ENTIENDO LA LOGICA DE ESTO
  #xxxxget 'movies/new', to: 'movies#new'
  #xxxxpost 'movies/new', to: 'movies#create'



end
