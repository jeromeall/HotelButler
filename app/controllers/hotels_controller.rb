class HotelsController < ApplicationController
  respond_to :json

  def index
    render json: Hotel.all
  end
  
end
