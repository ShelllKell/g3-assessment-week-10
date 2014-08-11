Rails.application.routes.draw do
  root "home#index"
  get "/about" => "about#about"
  get "/gifs/new" => "gifs#new"
  post "/gifs" => "gifs#create", :as => :gifs

end
