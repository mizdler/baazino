class AddFileToGame < ActiveRecord::Migration
  def self.up
    add_attachment :games, :install_file
  end

  def self.down
    remove_attachment :games, :install_file
  end
end
