class StaysController < ApplicationController
  before_filter :authenticate_guest!
  respond_to :json
  def index 
      render json: Stay.where(guest_id: current_guest.id)
  end

  def new
    render json: {"stay" => Stay.guest_stays(current_guest) }
  end

  def create
    stay = Stay.new(safe_params)
    stay.guest_id = current_guest.id
    stay.room_id = Hotel.find(params[:hotel_id]).rooms.where(vacant_stat: true).first.id
    stay.save
    render json: stay
  end

  def show
    render json: Stay.find(params[:id])
  end

  def hotels
   render json: Hotel.all 
  end

  def safe_params
    params.require(:stay).permit(:checkin_date, :checkout_date, :res_num, :hotel_id)
  end
end
