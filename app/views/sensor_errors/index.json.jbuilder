json.array!(@sensor_errors) do |sensor_error|
  json.extract! sensor_error, :id, :sensorID, :value, :occurredAt
  json.url sensor_error_url(sensor_error, format: :json)
end
