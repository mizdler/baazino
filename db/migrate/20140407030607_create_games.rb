class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :version
      t.string :description
      t.integer :downloads_num
      t.belongs_to :developer, index: true
      t.belongs_to :genre, index: true
      t.belongs_to :platform, index: true
      t.belongs_to :review, index: true

      t.timestamps
    end
  end
end
