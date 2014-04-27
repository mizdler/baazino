class Refactor < ActiveRecord::Migration
  def self.up
    drop_table :game_genres
    drop_table :game_infos
  end
end
