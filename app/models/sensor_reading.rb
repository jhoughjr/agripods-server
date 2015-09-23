class SensorReading
  include Mongoid::Document
  field :sensorID, type: String
  field :value, type: Decimal
  field :measuredAt, type: Timestamp
end
