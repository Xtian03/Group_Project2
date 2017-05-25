Rails.application.routes.draw do


  post "/users/:id/rate" => 'ratings#create'

  post '/rate' => 'rater#create', :as => 'rate'
  get 'ratings/index'

  get 'ratings/show'

  get 'ratings/destroy'

  resources :bookings
  get "/available_bookings" => 'bookings#available_bookings'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'


  get "/home" => "pages#home"

  get "/wall" => "pets#index"

  get "/book" => "pages#book"

  get "/search" => "pages#search"

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

resources :users do
  member do
  put "like", to: "users#upvote"
  put "dislike", to: "users#downvote"

   end
end

  post "/bookings/:id/book" => "bookings#book"

  resources :services, :users, :pets, :bookings


end
