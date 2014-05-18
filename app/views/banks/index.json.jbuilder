json.array!(@banks) do |bank|
  json.extract! bank, :id, :bank_name
  json.url bank_url(bank, format: :json)
end
