class HumidityController < SensorReadingController
  def index
    @humidities = Humidity.all
    render json: @humidities
  end

  def create
    @humidity = Humidity.new
    @humidity.sensorID = params["sid"]
    @humidity.value = params["val"]
    @humidity.measuredAt = params["mat"]

    if @humidity.save
      render json:@humidity
    else
      render plain: "501"
    end
  end
end
