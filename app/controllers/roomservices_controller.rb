class RoomservicesController < ApplicationController
  respond_to :json

  # respond with Roomservice requests belonging to current stay
  def index
    render json: Roomservice.where(stay_id: params[:stay_id])
  end

  # for the current stay, create a new Roomservice order
  def create
    stay = Stay.find(params[:stay_id])
    roomservice = stay.roomservices.create()
    render json: roomservice
  end

  def show
    stay = Stay.find(params[:stay_id])
    roomservice = stay.roomservices.find(params[:id])
    render json: roomservice
  end

end
