class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.belongs_to :game, index: true

      t.timestamps
    end
  end
end
