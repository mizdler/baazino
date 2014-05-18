class CreateDeveloperAccounts < ActiveRecord::Migration
  def change
    create_table :developer_accounts do |t|
      t.string :account_balance
      t.string :account_number
      t.belongs_to :bank, index: true

      t.timestamps
    end
  end
end
