HotelButler::Application.routes.draw do

  devise_for :guests
  root to: "sites#index"
  get "/home", to: "application#index", as: "home"
  get "/hotels", to: "stays#hotels", as: "hotels"

  resources :stays, :defaults => {format: :json} do
    resources :housekeepings, :defaults => {format: :json}
    resources :concierges, :defaults => {format: :json}
  end
  

end
