Rails.application.routes.draw do
  resources :transactions
  resources :item_categories
  resources :categories
  resources :items

  
  get '/', to: 'auth#index'
  get '/register', to: 'auth#register'
  post '/login', to: 'auth#postLogin'
  get '/logout', to: 'auth#postLogout'

  get '/dashboard', to: 'home#index'

  get '/order/:id', to: 'order#index'
  get '/order/:id/new', to: 'order#new'
  get '/order/:id/:itemid', to: 'order#show'
  get '/order/:id/:itemid/edit', to: 'order#edit'
  post '/order/:id', to: 'order#create'
  patch '/order/:id/:itemid', to: 'order#update'
  delete '/order/:id/:itemid', to: 'order#destroy'


  # root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
