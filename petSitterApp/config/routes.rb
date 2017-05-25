Rails.application.routes.draw do

  resources :bookings
  get "/available_bookings" => 'bookings#available_bookings'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  get "/" => "pages#home"

  get "/wall" => "pets#index"

  get "/book" => "pages#book"

  get "/search" => "pages#search"

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  post "/bookings/:id/book" => "bookings#book"

  resources :services, :users, :pets, :bookings

end
