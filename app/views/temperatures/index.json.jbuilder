json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id
  json.url temperature_url(temperature, format: :json)
end
