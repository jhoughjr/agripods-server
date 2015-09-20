class TemperaturesController < ApplicationController

  def index
    @temperatures = Temperature.all
    render json: @temperatures
  end

  def create
    # render plain: params
    @temperature = Temperature.new
    @temperature.sensorID = params[:sensorID]
    @temperature.value = params[:value]
    @temperature.measuredAt = params[:measuredAt]

    if @temperature.save
      render plain: "200"
    else
      render plain: @temperature.errors.messages.to_json
    end
  end
end
