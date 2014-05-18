json.array!(@developer_accounts) do |developer_account|
  json.extract! developer_account, :id, :account_balance, :account_number, :bank_id
  json.url developer_account_url(developer_account, format: :json)
end
