json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id, :sensorID, :value, :measuredAt
  json.url temperature_url(temperature, format: :json)
end
