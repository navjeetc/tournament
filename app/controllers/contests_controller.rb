class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(post_params)
    if @contest.save
      redirect_to contests_url, :notice => "Successfully created contest."
    else
      render :action => 'new'
    end
  end

  def show
    @contest = Contest.find(params[:id])
    @players = @contest.players.order(:last_name)
  end
  
  private
  def post_params
    params.require(:contest).permit(:name, :started_on, :ended_on)
  end

end