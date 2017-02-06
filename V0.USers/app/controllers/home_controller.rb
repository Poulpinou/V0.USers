class HomeController < ApplicationController
  def index
    @users = User.all
    @ideas = Idea.all
  end

  def show
  end
end
