json.array!(@developers) do |developer|
  json.extract! developer, :id, :ssid, :tel, :developer_account_id
  json.url developer_url(developer, format: :json)
end
