class PlayerController < ApplicationController
  def index
  end

  def view
    @player = Player.where(:name => params[:name]).first!
    @world_name = @player.world_name
  end

  def search
    @players = Player.find_by_name_part(params[:name]).limit(15)
    render :json => @players, :root => false
  end
end
