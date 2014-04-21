class ConciergesController < ApplicationController
  respond_to :json

  # respond with concierge requests belonging to current stay
  def index
    render json: Concierge.where(stay_id: params[:stay_id])
  end

  # for the current stay, create a new concierge request
  def create
    stay = Stay.find(params[:stay_id])
    concierge = stay.concierges.create(safe_params)
    render json: concierge
  end

  def show
    stay = Stay.find(params[:stay_id])
    concierge = stay.concierges.find(params[:id])
    render json: concierge
  end


  def safe_params
    params.require(:concierge).permit(:event_type, :num_party, :event_date, :details)
  end



end
