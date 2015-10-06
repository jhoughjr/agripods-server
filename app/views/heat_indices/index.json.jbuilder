json.array!(@heat_indices) do |heat_index|
  json.extract! heat_index, :id, :sensorID, :value, :measuredAt
  json.url heat_index_url(heat_index, format: :json)
end
