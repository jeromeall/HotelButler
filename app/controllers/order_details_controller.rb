class OrderDetailsController < ApplicationController
respond_to :json

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
