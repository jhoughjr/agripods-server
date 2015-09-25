class HumidityController < SensorReadingController
  def index
    @humidities = Humidity.all
    render json: @humidities
  end

  def create

  end
end
