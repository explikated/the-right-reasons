json.array!(@episode_points) do |episode_point|
  json.extract! episode_point, :id
  json.url episode_point_url(episode_point, format: :json)
end
