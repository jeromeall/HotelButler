HotelButler::Application.routes.draw do

  devise_for :guests
  root to: "sites#index"
  get "/home", to: "application#index", as: "home"
  resources :hotel, :defaults => {format: :json} do 
    resources :menu_items, :defaults => {format: :json}
  end

  resources :stays, :defaults => {format: :json} do
    resources :housekeepings, :defaults => {format: :json}
    resources :concierges, :defaults => {format: :json}
    resources :roomservices, :defaults => {format: :json}
  end
  

end
