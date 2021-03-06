class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout "application"
  #protect_from_forgery :except => :receive_guest
  before_action :authenticate_user!
  #before_action :current_or_guest_user
  before_action :set_last_url, :active_game
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def active_game
    #put here default cookies values
    cookies[:active_game] = cookies[:active_game] || Game.first.id

    @game = Game.find(cookies[:active_game])
  end
  
#guest session
   # if user is logged in, return current_user, else return guest_user
  def current_or_guest_user
    if current_user
      if session[:guest_user_id] && session[:guest_user_id] != current_user.id
        logging_in
        # reload guest_user to prevent caching problems before destruction
        guest_user(with_retry = false).reload.try(:destroy)
        session[:guest_user_id] = nil
      end
      current_user
    else
      guest_user
    end
  end

  # find guest_user object associated with the current session,
  # creating one as needed
  def guest_user(with_retry = true)
    # Cache the value the first time it's gotten.
    @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)

  rescue ActiveRecord::RecordNotFound # if session[:guest_user_id] invalid
     session[:guest_user_id] = nil
     guest_user if with_retry
  end


  def set_last_url
    session[:previous_request_url] = session[:current_request_url]
    session[:current_request_url] = request.url
  end

#Later, make an auto update
  def update_ranks
    Game.all.each do |game|
      ideas = Idea.where("game_id = '#{game.id}'").order({votes_amount: :desc}, :title)
      i = 1
      ideas.each do |idea|
        idea.rank = i
        idea.save(validate: false)
        i += 1
      end
    end
    redirect_to session[:previous_request_url]
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:users, keys: [:picture])
  end

  private

  # called (once) when the user logs in, insert any code your application needs
  # to hand off from guest_user to current_user.
  def logging_in
    # For example:
    # guest_comments = guest_user.comments.all
    # guest_comments.each do |comment|
      # comment.user_id = current_user.id
      # comment.save!
    # end
  end

  def create_guest_user
    u = User.create(:pseudo => "guest", :email => "guest_#{Time.now.to_i}#{rand(100)}@example.com")
    u.save!(:validate => false)
    session[:guest_user_id] = u.id
    u
  end

end
