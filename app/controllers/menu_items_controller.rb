class MenuItemsController < ApplicationController
  respond_to :json

  def index
    render json: MenuItem.where(hotel_id: params[:hotel_id]).sort
  end

end
