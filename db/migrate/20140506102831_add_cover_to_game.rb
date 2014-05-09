class AddCoverToGame < ActiveRecord::Migration
  def self.up
    add_attachment :games, :cover_photo
  end

  def self.down
    remove_attachment :games, :cover_photo
  end
end
