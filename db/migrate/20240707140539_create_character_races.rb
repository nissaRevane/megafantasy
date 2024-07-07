class CreateCharacterRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :character_races do |t|
      t.string :name
      t.integer :charisma
      t.integer :intelligence
      t.integer :stealth
      t.integer :dexterity
      t.integer :constitution
      t.integer :speed
      t.integer :strength
      t.integer :mana
      t.integer :min_size
      t.integer :max_size
      t.integer :min_weight
      t.integer :max_weight
      t.string :effect

      t.timestamps
    end
  end
end
