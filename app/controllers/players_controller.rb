class PlayersController < ApplicationController
  def index
    @players = Player.all
    @team = Team.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(post_params)
    if @player.save
      redirect_to @player, :notice => "Successfully created player."
    else
      render :action => 'new'
    end
  end

  def edit
    @player = Player.find(params[:id])
    @tournaments = Contest.all
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(post_params)
      redirect_to @player, :notice  => "Successfully updated player."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, :notice => "Successfully destroyed player."
  end

  private
  def post_params
    params.require(:player).permit(:first_name, :last_name, 
      :contest_id, :team_id)
  end
end
