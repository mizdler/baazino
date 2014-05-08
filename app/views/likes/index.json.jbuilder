json.array!(@likes) do |like|
  json.extract! like, :id, :user_id, :game_id
  json.url like_url(like, format: :json)
end
