Rails.application.routes.draw do

  root "home#index"
#same
  get "books/:id", to: "books#show", as: 'singlebook'
  patch "books/:id", to: "books#update"
  delete "books/:id", to: "books#delete"
#same
  get '/books', to: 'books#index', as: 'allbooks'
  post '/books', to: "books#create"
#same
  get "/books/new", to: "books#new"
#same
  get "books/:1/edit", to: "books#edit"  

#same
  get "authors/:id", to: "authors#show", as: 'singleauthor'
  patch "authors/:id", to: "authors#update"
  delete "authors/:id", to: "authors#delete"
#same
   get '/authors', to: 'authors#index', as: 'allauthors' 
   post "/authors", to: "authors#create"
#same
   get "/authors/new", to: "authors#new"
   get "authors/edit/:id", to: "authors#edit"


  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'books/delete'

  # get 'authors/new'
  # get 'authors/index'
  # get 'authors/show'
  # get 'authors/edit'
  # get 'authors/delete'


  # default route

  # get ':controller(/:action(/:id))'

  # Restfulroutes
    # resources :authors
    # resources :books
  
end
