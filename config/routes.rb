Rails.application.routes.draw do
  resources :books, only: [:index, :new, :create, :show, :edit]
  #get 'books/new' => 'books#new'
  #post 'books' => 'books#create'
  #get 'books/' => 'books#index'
  #get 'books/show'
  #get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/' => 'homes#top'
  root 'homes#top'
  #get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
