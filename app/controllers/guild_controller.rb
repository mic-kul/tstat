class GuildController < ApplicationController
  def index
  end

  def view
    @guild = Guild.find_by_name(params[:name]).first!

    @members = @guild.players

  end

  def search
    @guilds = Guild.find_by_name_part(params[:name]).limit(15)
    render :json => @guilds, root: false
  end
end
