class AmbientLightLevelController < ApplicationController

  def index
    @ambientLightLevels = AmbientLightLevel.all
    render json: @ambientLightLevels
  end

  def create
    @ambientLightLevel = AmbientLightLevel.new
    @ambientLightLevel.sensorID = params["sid"]
    @ambientLightLevel.value = params["val"]
    @ambientLightLevel.measuredAt = params["mat"]

    if @ambientLightLevel.save
      render json:@ambientLightLevel
    else
      render plain: "501"
    end
  end
end
