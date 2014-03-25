class HousekeepingsController < ApplicationController
respond_to :json

def index
  render json: Housekeeping.where(stay_id: params[:stay_id])
end

def create
  stay = Stay.find(params[:stay_id])
  housekeeping = stay.housekeepings.new(safe_params)
  render json: housekeeping
end

def safe_params
  params.require(:housekeeping).permit(:request)
end




end
