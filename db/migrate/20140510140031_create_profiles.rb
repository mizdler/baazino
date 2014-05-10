class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
