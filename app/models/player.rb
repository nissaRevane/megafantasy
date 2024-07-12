class Player < ApplicationRecord
  belongs_to :game
  belongs_to :character_race, optional: true
  belongs_to :character_class, optional: true

  def native_charisma
    character_race&.charisma.to_i + character_class&.charisma.to_i
  end

  def native_intelligence
    character_race&.intelligence.to_i + character_class&.intelligence.to_i
  end

  def native_stealth
    character_race&.stealth.to_i + character_class&.stealth.to_i
  end

  def native_dexterity
    character_race&.dexterity.to_i + character_class&.dexterity.to_i
  end

  def native_constitution
    character_race&.constitution.to_i + character_class&.constitution.to_i
  end

  def native_speed
    character_race&.speed.to_i + character_class&.speed.to_i
  end

  def native_strength
    character_race&.strength.to_i + character_class&.strength.to_i
  end

  def native_mana
    character_race&.mana.to_i + character_class&.mana.to_i
  end
end
