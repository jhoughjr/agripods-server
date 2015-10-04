class SensorErrorController < ApplicationController

  def index
    @sensor_errors = SensorError.all
    render json: @sensor_errors
  end

  def create
    @sensor_error = SensorError.new
    @sensor_error.sensorID = params["sid"]
    @sensor_error.sensorType = params["stype"]
    @sensor_error.error = params["err"]
    @sensor_error.measuredAt = params["mat"]

    if @sensor_error.save
      render json: @sensor_error
    else
      render json: []
    end
  end
end
