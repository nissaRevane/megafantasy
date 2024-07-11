class PlayersController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    redirect_to root_path and return unless @game

    player = Player.new(name: params[:name], game_id: params[:game_id])

    redirect_to game_path(@game) and return if player.save
    redirect_to game_path(@game), alert: player.errors.full_messages.join(', ')
  end
end
