class SitesController < ApplicationController
  def index
    render :layout => 'application', :nothing => true
  end

  def home
  end
end
