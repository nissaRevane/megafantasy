class PlayersController < ApplicationController
  PERMIT_PARAMS = %i[
    name
    size
    weight
    money
    life_point
    fame
    character_race_id
    character_class_id
  ].freeze

  def update
    @player = Player.find(params[:id])
    redirect_to root_path and return unless @player

    if params[:character_race_id].to_i != @player.character_race_id
      new_race = CharacterRace.find(params[:character_race_id])

      @player.size = rand(new_race.min_size..new_race.max_size)
      @player.weight = rand(new_race.min_weight..new_race.max_weight)
    end

    @player.update!(**params.permit(PERMIT_PARAMS))
    redirect_to game_path(@player.game_id)
  end
end
