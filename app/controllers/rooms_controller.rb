class RoomsController < ApplicationController
respond_to :json

def index
  render json: Room.all  
end

end
