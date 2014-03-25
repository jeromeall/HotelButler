class ConciergesController < ApplicationController
respond_to :json

def index
  render json: Concierge.where(stay_id: params[:stay_id])
end

end
