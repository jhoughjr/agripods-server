class TemperaturesController < ApplicationController

  def new
    @temperature = Temperature.new()
    @temperature.sensorID = params["sensorID"]
    @temperature.value = params["value"]
    @temperature.measuredAt = params["measuredAt"]

    if @temperature.valid?
      @temperature.save
      render plain: @temperature.to_json
    else
      render plain: "A temperature cannot be saved with params #{params.to_json}\n "\
                    "due to #{@temperature.errors.messages}"
    end
  end

  def index
    @temperatures = Temperature.all()
    render json:@temperatures
  end
end
