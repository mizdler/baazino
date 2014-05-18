json.array!(@gates) do |gate|
  json.extract! gate, :id, :bank_name
  json.url gate_url(gate, format: :json)
end
