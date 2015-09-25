class TemperatureController < SensorReadingController

  def index
    @temperatures = Temperature.all
    render json: @temperatures
  end

  def create

  end
end
