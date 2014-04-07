json.array!(@games) do |game|
  json.extract! game, :id, :game_name, :version, :create_date, :release_date, :description, :developer_id, :geme_info_id, :geme_genre_id, :game_review_id
  json.url game_url(game, format: :json)
end
