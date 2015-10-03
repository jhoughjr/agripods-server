class HeatIndexController < ApplicationController

  def index
    @heatIndices = HeatIndex.all
    render json: @heatIndices
  end

  def create
    @heat_index = HeatIndex.new
    @heat_index.sensorID = params["sid"]
    @heat_index.value = params["val"]
    @heat_index.measuredAt = params["mat"]

    if @heat_index.save
      render json:@heat_index
    else
      render plain: "501"
    end
  end

end
