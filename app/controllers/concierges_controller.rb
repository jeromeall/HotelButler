class ConciergesController < ApplicationController
respond_to :json

def index
  render json: Concierge.where(stay_id: params[:stay_id])
end

def create
  stay = Stay.find(params[:stay_id])
  concierge = stay.concierges.create(safe_params)
  render json: concierge
end

def safe_params
  params.require(:concierge).permit(:event_type, :num_party, :event_date, :details)
end

end
