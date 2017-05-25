Rails.application.routes.draw do

  post "/users/:id/rate" => 'ratings#create'

  post '/rate' => 'rater#create', :as => 'rate'
  get 'ratings/index'

  get 'ratings/show'

  get 'ratings/destroy'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'


  get "/home" => "pages#home"

  get "/wall" => "pets#index"

  get "/book" => "pages#book"

  get "/search" => "pages#search"

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  resources :services, :pets

resources :users do
  member do
  put "like", to: "users#upvote"
  put "dislike", to: "users#downvote"

   end
end

end
