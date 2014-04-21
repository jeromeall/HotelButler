class MenuItemsController < ApplicationController
  respond_to :json

  # find the room belonging to the current stay -> find the Hotel it belongs to -> render the menu items belonging to that hotel
  def index
    render json: MenuItem.where(hotel_id: Room.find(Stay.find(params[:stay_id].to_i).room_id).hotel_id)
  end

end
