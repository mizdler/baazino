json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :purchase_date, :cart_number, :price, :user_id, :game_id, :gate_id
  json.url purchase_url(purchase, format: :json)
end
