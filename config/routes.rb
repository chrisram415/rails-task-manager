Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # creates all 7 CRUD actions,
  # example if this was a restuarant class it would be:

  # # Read all
  # get    "restaurants",          to: "restaurants#index"
  # # Create
  # get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
  # post   "restaurants",          to: "restaurants#create"
  # # Read one - The `show` route needs to be *after* `new` route.
  # get    "restaurants/:id",      to: "restaurants#show", as: :restaurant
  # # Update
  # get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch  "restaurants/:id",      to: "restaurants#update"
  # # Delete
  # delete "restaurants/:id",      to: "restaurants#destroy"

  resources :tasks
end

# But we don’t have to write them all!
# We can generate the 7 routes shown before with just one line:
# resources :nameofclass

# example:
# # config/routes.rb
# Rails.application.routes.draw do
#   resources :restaurants
# end

# Subset of the 7 routes aka we can emphasize which routes we want w/:
# # config/routes.rb
# Rails.application.routes.draw do
#   resources :restaurants, only: [:create, :index, :destroy]
# end
