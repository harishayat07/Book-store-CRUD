Rails.application.routes.draw do

  root "home#index"

  # get   "/books", to: 'books#index', as: 'books'   
  # post  "/books", to: 'books#create' 
  # get   "/books/new", to: 'books#new', as: 'new_book'        
  # get    "/books/:id", to: 'books#show', as: 'book'
  # get    "/books/:id/edit", to: 'books#edit', as: 'edit_book'
  # patch  "/books/:id", to:'books#update'
  # delete "books/:id", to: "books#destroy", as: 'delete_book'

  # get '/authors', to: 'authors#index', as: 'authors' 
  # post "/authors", to: "authors#create"
  # get "/authors/new", to: "authors#new", as: 'new_author'
  # get "authors/:id", to: "authors#show", as: 'author'
  # get "authors/edit/:id", to: "authors#edit", as:'edit_author'
  # patch "authors/:id", to: "authors#update"
  # delete "authors/:id", to: "authors#destroy", as: 'delete_author'



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

  #  get ':controller(/:action(/:id))'

  # Restfulroutes
   resources :authors do
     resources :books, only: [:index, :show, :new]
   end
   resources :books
end



# authors        GET    /authors(.:format)                    authors#index
#                POST   /authors(.:format)                            authors#create
# new_author     GET    /authors/new(.:format)             authors#new
# edit_author    GET    /authors/:id/edit(.:format)       authors#edit
# author         GET    /authors/:id(.:format)                 authors#show
#                PATCH  /authors/:id(.:format)                        authors#update
#                PUT    /authors/:id(.:format)                        authors#update
#                DELETE /authors/:id(.:format)                        authors#destroy
