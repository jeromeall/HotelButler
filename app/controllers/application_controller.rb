class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # render Angular SPA
  def index
    render "stays/index"
  end

  protected

  # After sign in, redirect guest to application index (stays index for SPA)
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || authenticated_path
  end

end

