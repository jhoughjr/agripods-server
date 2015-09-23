class Temperature < SensorReading
  def to_fahrenheit
    (9/5) * super.value + 32
  end
end
