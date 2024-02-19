Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #we are going to need resources for places and routes

  resources "places"

  resources "entries"

  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" })
end
