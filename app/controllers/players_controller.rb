class PlayersController < ApplicationController
  PERMIT_PARAMS = %i[name size weight money life_point character].freeze
  def update
    @player = Player.find(params[:id])
    redirect_to root_path and return unless @player

    @player.update!(**params.permit(PERMIT_PARAMS))
    redirect_to game_path(@player.game_id)
  end
end
