class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :games, :game_genre_id
  end

  def self.down
    add_column :games, :game_genre_id, :string
  end
end
