class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :size
      t.integer :weight
      t.integer :money
      t.references :game, null: false, foreign_key: true
      t.integer :life_point
      t.references :character_race, null: true, foreign_key: true
      t.references :character_class, null: true, foreign_key: true

      t.timestamps
    end
  end
end
