HotelButler::Application.routes.draw do

  devise_for :guests
  root "sites#index"
  get "/home", to: "application#index", as: "home"
  resources :stays, as: "stays"
  get "/hotels", to: "stays#hotels", as: "hotels"

end
