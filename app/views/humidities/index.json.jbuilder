json.array!(@humidities) do |humidity|
  json.extract! humidity, :id, :sensorID, :value, :measuredAt
  json.url humidity_url(humidity, format: :json)
end
