class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :stars
      t.string :text
      t.date :submit_date
      t.belongs_to :user, index: true
      t.belongs_to :game, index: true

      t.timestamps
    end
  end
end
