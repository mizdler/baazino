json.array!(@comments) do |comment|
  json.extract! comment, :id, :stars, :text, :submit_date, :user_id, :game_id
  json.url comment_url(comment, format: :json)
end
