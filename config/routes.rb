Rails.application.routes.draw do
  post 'message/create' => "message#create"

  get '/talks' => "talks#index"
  post "/talks/create" => "talks#create"
  get "/talks/:id" => "talks#show"

  get '/' => "users#new"
  get "/login" => "users#login_form"
  post "/login" => "users#login"
  post "/users/create" => "users#create"
  get "/users/index" => "users#index"
  post "/logout" => "users#logout"
  get "/users/:id/edit" => "users#edit"
  post "/users/:id/update" => "users#update"






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
