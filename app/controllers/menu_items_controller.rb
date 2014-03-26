class MenuItemsController < ApplicationController
  respond_to :json

  def index
    render json: MenuItem.where(hotel_id: Room.find(Stay.find(params[:stay_id].to_i).room_id).hotel_id)
  end

end
