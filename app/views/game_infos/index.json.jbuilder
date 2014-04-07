json.array!(@game_infos) do |game_info|
  json.extract! game_info, :id, :platform_id, :version_support
  json.url game_info_url(game_info, format: :json)
end
