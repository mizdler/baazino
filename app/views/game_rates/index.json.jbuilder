json.array!(@game_rates) do |game_rate|
  json.extract! game_rate, :id, :game_id, :game_play, :graphic, :story, :total
  json.url game_rate_url(game_rate, format: :json)
end
