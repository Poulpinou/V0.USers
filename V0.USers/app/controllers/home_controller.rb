class HomeController < ApplicationController
  def index
    @users = User.all
    @ideas = Idea.where("game_id = '#{@game.id}'")
    @articles = Article.where("game_id = '#{@game.id}'")
  end

  def show
  end
end
