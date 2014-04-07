json.array!(@game_genres) do |game_genre|
  json.extract! game_genre, :id, :game_id, :genre_id
  json.url game_genre_url(game_genre, format: :json)
end
