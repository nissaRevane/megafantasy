class AddLearnedAndBonusSkillsToPlayer < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :charisma_learned, :integer, default: 0
    add_column :players, :intelligence_learned, :integer, default: 0
    add_column :players, :stealth_learned, :integer, default: 0
    add_column :players, :dexterity_learned, :integer, default: 0
    add_column :players, :constitution_learned, :integer, default: 0
    add_column :players, :speed_learned, :integer, default: 0
    add_column :players, :strength_learned, :integer, default: 0
    add_column :players, :mana_learned, :integer, default: 0

    add_column :players, :charisma_bonus, :integer, default: 0
    add_column :players, :intelligence_bonus, :integer, default: 0
    add_column :players, :stealth_bonus, :integer, default: 0
    add_column :players, :dexterity_bonus, :integer, default: 0
    add_column :players, :constitution_bonus, :integer, default: 0
    add_column :players, :speed_bonus, :integer, default: 0
    add_column :players, :strength_bonus, :integer, default: 0
    add_column :players, :mana_bonus, :integer, default: 0
  end
end
