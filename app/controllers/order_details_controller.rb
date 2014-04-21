class OrderDetailsController < ApplicationController
  respond_to :json

  # respond with order details associated with current roomservice order
  def index
    stay = Stay.find(params[:stay_id])
    roomservice = stay.roomservices.find(params["roomservice_id"])
    order_details = roomservice.order_details
    render json: order_details
  end

  # create order detail associated with current roomservice order
  def create
    stay = Stay.find(params[:stay_id])
    roomservice = stay.roomservices.find(params["roomservice_id"])
    order_details = roomservice.order_details.create(safe_params)
    render json: order_details
  end

  def safe_params
    params.require(:order_detail).permit(:menu_item_id, :quantity, :instructions)
  end

end
