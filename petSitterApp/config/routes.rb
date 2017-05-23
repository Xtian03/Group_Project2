Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  get "/" => "pages#home"

  get "/wall" => "pets#index"

  get "/book" => "pages#book"

  get "/search" => "pages#search"

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'


  resources :services, :users, :pets

end
