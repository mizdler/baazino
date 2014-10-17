class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.belongs_to :game, index: true
      t.attachment :image_file
      t.timestamps
    end
  end
end
