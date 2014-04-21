class RoomsController < ApplicationController
  respond_to :json

  # respond with all Rooms
  def index
    render json: Room.all  
  end

end
