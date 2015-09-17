json.array!(@humidity_readings) do |humidity_reading|
  json.extract! humidity_reading, :id, :sensorID, :value, :measuredAt
  json.url humidity_reading_url(humidity_reading, format: :json)
end
