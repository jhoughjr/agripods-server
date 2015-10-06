json.array!(@smoke_levels) do |smoke_level|
  json.extract! smoke_level, :id, :sensorID, :value, :measuredAt
  json.url smoke_level_url(smoke_level, format: :json)
end
