class AddPriceColumn < ActiveRecord::Migration
  def self.up
    add_column :games, :price, :integer
  end
end
