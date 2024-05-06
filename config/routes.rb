Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/games" => "games#index"
  post "/games" => "games#create"
end
