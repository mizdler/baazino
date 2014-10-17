json.array!(@videos) do |video|
  json.extract! video, :id, :title, :game_id
  json.url video_url(video, format: :json)
end
