Rails.application.routes.draw do
 resources :books
 get "new/books" => "books#new"
 # get root :to => 'books#table'
 get root :to => 'start#index'

 resources :start, only: :index
end
