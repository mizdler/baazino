class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :ssid
      t.string :tel
      t.belongs_to :developer_account, index: true

      t.timestamps
    end
  end
end
