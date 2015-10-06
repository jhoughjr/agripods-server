class HeatIndex
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sensorID, type: String
  field :value, type: Float
  field :measuredAt, type: DateTime
end
