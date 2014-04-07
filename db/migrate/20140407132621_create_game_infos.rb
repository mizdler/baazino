class CreateGameInfos < ActiveRecord::Migration
  def change
    create_table :game_infos do |t|
      t.belongs_to :platform, index: true
      t.string :version_support

      t.timestamps
    end
  end
end
