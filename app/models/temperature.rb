class Temperature
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sensorID, type: String
  field :value, type: Float
end
