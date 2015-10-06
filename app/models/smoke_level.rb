class SmokeLevel
  include Mongoid::Document
  field :sensorID, type: String
  field :value, type: Float
  field :measuredAt, type: DateTime
end
