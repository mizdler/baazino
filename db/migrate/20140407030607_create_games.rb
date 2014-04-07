class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :version
      t.date :create_date
      t.date :release_date
      t.string :description
      t.belongs_to :developer, index: true
      t.belongs_to :geme_info, index: true
      t.belongs_to :geme_genre, index: true
      t.belongs_to :game_review, index: true

      t.timestamps
    end
  end
end
