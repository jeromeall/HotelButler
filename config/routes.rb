HotelButler::Application.routes.draw do

  devise_for :guests
  unauthenticated :guest do
    root to: "sites#index", :as => "unauthenticated"
  end 
  authenticated :guest do
    root to: "application#index", :as => "authenticated"
  end 

  resources :hotels, :defaults => {format: :json}
  resources :rooms, :defaults => {format: :json}

  resources :stays, :defaults => {format: :json} do
    resources :housekeepings, :defaults => {format: :json}
    resources :concierges, :defaults => {format: :json}
    resources :roomservices, :defaults => {format: :json} do
      resources :order_details, :defaults => {format: :json}
    end
    resources :menu_items, :defaults => {format: :json}
  end
  

end
