class RefactorGame < ActiveRecord::Migration
  def self.up
    add_column :games, :downloads_num, :long
  end
end
