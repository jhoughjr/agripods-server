class SensorError
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sensorID, type: String
  field :value, type: String
  field :occurredAt, type: DateTime
end
