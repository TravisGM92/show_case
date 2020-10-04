class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :college
      t.string :home_state
    end
  end
end
