class Temperature

  include Mongoid::Document

  field :sensorID, type: String
  field :value, type: Float
  field :measuredAt, type: DateTime

  def to_fahrenheit
    (9/5) * super.value + 32
  end
end
