class RoomservicesController < ApplicationController
  respond_to :json

  def index
    render json: Roomservice.where(stay_id: params[:stay_id])
  end

  def create
    stay = Stay.find(params[:stay_id])
    roomservice = stay.roomservices.create()
    render json: roomservice
  end



end
