class HumiditiesController < ApplicationController

  def index
    @humidities = Temperature.all
    render json: @humidities
  end

  def create
    @humidity = Temperature.new
    @humidity.sensorID = params[:sensorID]
    @humidity.value = params[:value]
    @humidity.measuredAt = params[:measuredAt]

    if @humidity.save
      render plain: "200"
    else
      render plain: @humidity.errors.messages.to_json
    end
  end
end
