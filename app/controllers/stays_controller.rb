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
    first_vacant_room = Hotel.find(params[:hotel_id]).rooms.where(vacant_stat: true).first
    stay.room_id = first_vacant_room.id
    first_vacant_room.vacant_stat = false;
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
