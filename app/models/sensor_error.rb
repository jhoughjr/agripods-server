class SensorError
  include Mongoid::Document

  field :sensorID, type: String
  field :error, type: String
  field :sensorType , type: String
  field :measuredAt, type: DateTime
end
