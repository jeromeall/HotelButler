class StaysController < ApplicationController
  before_filter :authenticate_guest!

  def index 
    respond_to do |f|
      f.html { render layout: false}
      f.json { render json: Stay.guest_stays(current_guest) }
    end
  end

  def hotels
    respond_to do |f|
      f.html { render layout: false}
      f.json { render json: Hotel.all }
    end
  end
end
