Rails.application.routes.draw do
  resources :transactions
  resources :item_categories
  resources :categories
  resources :items

  
  get '/', to: 'auth#index'
  get '/register', to: 'auth#register'

  # root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
