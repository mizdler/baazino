class RenameColumns < ActiveRecord::Migration
  def self.up
    remove_column :games, :geme_genre_id
    rename_column :games, :game_review_id, :review_id
    rename_column :games, :geme_info_id, :game_info_id
  end
end
