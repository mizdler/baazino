class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.belongs_to :game, index: true
      t.attachment :video_file
      t.timestamps
    end
  end
end
