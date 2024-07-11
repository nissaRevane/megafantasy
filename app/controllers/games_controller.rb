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

    redirect_to(games_path, alert: @game.errors.full_messages.join(', ')) unless @game.save

    player1 = Player.new(name: "Player1", game_id: @game.id)
    player2 = Player.new(name: "Player2", game_id: @game.id)

    redirect_to(games_path, alert: @game.errors.full_messages.join(', ')) unless player1.save && player2.save

    redirect_to(game_path(@game.id))
  end
end
