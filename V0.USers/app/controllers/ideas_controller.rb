class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy, :vote]


def vote
  vote = Vote.new
  vote.user_id = current_user.id
  vote.idea_id = @idea.id

  if vote.save
    current_user.available_votes -= 1
    @idea.votes_amount +=1
    current_user.save(validate: false)
    @idea.save
    redirect_to session[:previous_request_url]
  else
    redirect_to session[:previous_request_url], alert: "Error while saving"
  end
end

def sort_type
  cookies[:sort_ideas] = params[:type]
  redirect_to ideas_url
end






# --------------------Idea Scaffold --------------------
  # GET /ideas
  # GET /ideas.json
  def index
    @ideas = Idea.where("game_id = '#{@game.id}'")
    if cookies[:sort_ideas] == "Rank" 
      @ideas = @ideas.order({votes_amount: :desc}, :title) 
    elsif cookies[:sort_ideas] == "Last" 
      @ideas = @ideas.order({created_at: :desc}, :title) 
    elsif cookies[:sort_ideas] == "Random" 
      @ideas = @ideas.shuffle 
    end 
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    @comments = Comment.where(idea_id: params[:id])
  end

  # GET /ideas/new
  def new
    @idea = Idea.new

    cookies[:creator_id] = params[:id]#faire ce sytème par rapport au compte loggé quand on y sera

  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)
    @idea.user_id = current_user.id
    @idea.game_id = @game.id

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'Idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = Idea.find(params[:id])
    end

    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_params
      params.fetch(:idea).permit(:title, :description, :content)
    end
end
