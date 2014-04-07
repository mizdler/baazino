class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.date :purchase_date
      t.string :cart_number
      t.integer :price
      t.belongs_to :user, index: true
      t.belongs_to :game, index: true
      t.belongs_to :gate, index: true

      t.timestamps
    end
  end
end
