class CreateGameGenres < ActiveRecord::Migration
  def change
    create_table :game_genres do |t|
      t.belongs_to :game, index: true
      t.belongs_to :genre, index: true

      t.timestamps
    end
  end
end
