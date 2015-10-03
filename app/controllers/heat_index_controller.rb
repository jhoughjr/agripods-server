class HeatIndexController < ApplicationController

  def index
    @heatIndices = HeatIndex.all
    render json:@heatIndices
  end

  def create
  end
  
end
