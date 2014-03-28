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

  def show
    stay = Stay.find(params[:stay_id])
    roomservice = stay.roomservices.find(params[:id])
    # order_details = roomservice.order_details.all
    render json: roomservice
  end

end
