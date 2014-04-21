class HousekeepingsController < ApplicationController
  respond_to :json

  # respond with housekeeping requests belonging to current stay
  def index
    render json: Housekeeping.where(stay_id: params[:stay_id])
  end

  # for the current stay, create a new housekeeping request
  def create
    stay = Stay.find(params[:stay_id])
    housekeeping = stay.housekeepings.create(safe_params)
    render json: housekeeping
  end

  def show
    stay = Stay.find(params[:stay_id])
    housekeeping = stay.housekeepings.find(params[:id])
    render json: housekeeping
  end

  def safe_params
    params.require(:housekeeping).permit(:request)
  end


end
