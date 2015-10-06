class SensorError
  include Mongoid::Document
  field :sensorID, type: String
  field :value, type: String
  field :occurredAt, type: DateTime
end
