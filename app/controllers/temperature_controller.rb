class TemperatureController < SensorReadingController

  def index
    @temperatures = Temperature.all
    render json: @temperatures
  end

  def create
    @temperature = Temperature.new
    @temperature.sensorID = params["sid"]
    @temperature.value = params["val"]
    @temperature.measuredAt = params["mat"]

    if @temperature.save
      render json:@temperature
    else
      render plain: "501"
    end
  end
end
