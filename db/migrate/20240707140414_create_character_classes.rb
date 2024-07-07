class CreateCharacterClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.integer :charisma
      t.integer :intelligence
      t.integer :stealth
      t.integer :dexterity
      t.integer :constitution
      t.integer :speed
      t.integer :strength
      t.integer :mana
      t.integer :salary
      t.string :effect

      t.timestamps
    end
  end
end
