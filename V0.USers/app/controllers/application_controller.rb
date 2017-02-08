class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_last_url

  def set_last_url
    session[:previous_request_url] = session[:current_request_url]
    session[:current_request_url] = request.url
  end

end
