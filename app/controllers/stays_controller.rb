class StaysController < ApplicationController
  before_filter :authenticate_guest!

  def index 
    respond_to do |f|
      f.html { render layout: false}
      f.json { render json: {"stays" => Stay.where(guest_id: current_guest.id) } }
    end
  end

  def new
    respond_to do |f|
      f.html { render layout: false}
      f.json { render json: {"stay" => Stay.guest_stays(current_guest)} }
    end    
  end

  def create
    binding.pry
    stay = Stay.create(safe_params)
    stay.user_id = current_guest.id
  end

  def hotels
    respond_to do |f|
      f.html { render layout: false}
      f.json { render json: Hotel.all }
    end
  end

  def safe_params
    params.require(:stay).permit(:checkin_date, :checkout_date, :res_num)
  end
end
