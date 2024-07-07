class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    name = "Game #{Time.zone.now.strftime('%Y%m%d%H%M%S')}"
    @game = Game.new(name: , start_at: Time.zone.now)

    redirect_to(game_path(@game.id)) and return if @game.save
    redirect_to games_path
  end
end
