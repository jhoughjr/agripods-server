class HeatIndex
  include Mongoid::Document

  field :sensorID, type: String
  field :value, type: String
  field :measuredAt, type: DateTime
end
