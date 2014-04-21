class StaysController < ApplicationController
  before_filter :authenticate_guest!
  respond_to :json
  
  # respond with stays associated with current guest
  def index 
      render json: Stay.where(guest_id: current_guest.id)
  end

  # Create a stay for the current guest
  def create
    stay = Stay.new(safe_params)
    stay.guest_id = current_guest.id

    # Find a vacant room in the hotel
    first_vacant_room = Hotel.find(params[:hotel_id]).rooms.where(vacant_stat: true).first
    # Assign that room to the guest stay
    stay.room_id = first_vacant_room.id
    # Make room not vacant
    first_vacant_room.vacant_stat = false;
    stay.save
    render json: stay
  end

  def show
    stay = Stay.find(params[:id])
    render json: stay, :include => {:room =>{:include => :hotel} }
  end
  
  def safe_params
    params.require(:stay).permit(:checkin_date, :checkout_date, :res_num, :hotel_id)
  end
end
