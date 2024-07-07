class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(name: "Game #{Time.zone.now.to_i}", start_at: Time.zone.now)

    redirect_to(game_path(@game.id)) and return if @game.save

    redirect_to games_path
  end
end
