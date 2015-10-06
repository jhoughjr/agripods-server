json.array!(@ambient_light_levels) do |ambient_light_level|
  json.extract! ambient_light_level, :id, :sensorID, :value, :measuredAt
  json.url ambient_light_level_url(ambient_light_level, format: :json)
end
