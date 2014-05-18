class CreateGameRates < ActiveRecord::Migration
  def change
    create_table :game_rates do |t|
      t.belongs_to :game, index: true
      t.integer :game_play
      t.integer :graphic
      t.integer :story
      t.integer :total

      t.timestamps
    end
  end
end
