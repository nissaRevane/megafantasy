class Player < ApplicationRecord
  belongs_to :game
  belongs_to :character_race, optional: true
  belongs_to :character_class, optional: true
end
