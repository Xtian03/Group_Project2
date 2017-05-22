Rails.application.routes.draw do

  get "/" => "pages#home"

  get "/wall" => "pages#wall"

  get "/book" => "pages#book"


  resources :services, :users, :pets

end
