class RoomservicesController < ApplicationController
  respond_to :json

  def index
    render json: Roomservice.where(stay_id: params[:stay_id])
  end


end
