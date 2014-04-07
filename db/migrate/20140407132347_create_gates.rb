class CreateGates < ActiveRecord::Migration
  def change
    create_table :gates do |t|
      t.string :bank_name

      t.timestamps
    end
  end
end
