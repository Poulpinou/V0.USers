class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_last_url

  def set_last_url
    session[:previous_request_url] = session[:current_request_url]
    session[:current_request_url] = request.url
  end

#Later, make an auto update
  def update_ranks
    ideas = Idea.all.order({votes_amount: :desc}, :title)
    i = 1
    ideas.each do |idea|
      idea.rank = i
      idea.save(validate: false)
      i += 1
    end
    redirect_to session[:previous_request_url]
  end

end
