class AddFameToPlayer < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :fame, :integer, default: 0
  end
end
