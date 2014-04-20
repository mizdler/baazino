class AddDownloadsNumToGameInfo < ActiveRecord::Migration
  def self.up
    add_column :game_infos, :downloads_num, :long
  end
end
