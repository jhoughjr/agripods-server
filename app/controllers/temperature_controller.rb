class TemperatureController < SensorReadingController

  def index
    respond_to do |format|
      @temperatures = Temperature.all
      format.html
      format.json { render json: @temperatures}
    end
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
