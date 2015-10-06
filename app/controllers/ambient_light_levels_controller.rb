class AmbientLightLevelsController < ApplicationController
  before_action :set_ambient_light_level, only: [:show, :edit, :update, :destroy]

  # GET /ambient_light_levels
  # GET /ambient_light_levels.json
  def index
    @ambient_light_levels = AmbientLightLevel.all
  end

  # GET /ambient_light_levels/1
  # GET /ambient_light_levels/1.json
  def show
  end

  # GET /ambient_light_levels/new
  def new
    @ambient_light_level = AmbientLightLevel.new
  end

  # GET /ambient_light_levels/1/edit
  def edit
  end

  # POST /ambient_light_levels
  # POST /ambient_light_levels.json
  def create
    @ambient_light_level = AmbientLightLevel.new(ambient_light_level_params)

    respond_to do |format|
      if @ambient_light_level.save
        format.html { redirect_to @ambient_light_level, notice: 'Ambient light level was successfully created.' }
        format.json { render :show, status: :created, location: @ambient_light_level }
      else
        format.html { render :new }
        format.json { render json: @ambient_light_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambient_light_levels/1
  # PATCH/PUT /ambient_light_levels/1.json
  def update
    respond_to do |format|
      if @ambient_light_level.update(ambient_light_level_params)
        format.html { redirect_to @ambient_light_level, notice: 'Ambient light level was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambient_light_level }
      else
        format.html { render :edit }
        format.json { render json: @ambient_light_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambient_light_levels/1
  # DELETE /ambient_light_levels/1.json
  def destroy
    @ambient_light_level.destroy
    respond_to do |format|
      format.html { redirect_to ambient_light_levels_url, notice: 'Ambient light level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambient_light_level
      @ambient_light_level = AmbientLightLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ambient_light_level_params
      params.require(:ambient_light_level).permit(:sensorID, :value, :measuredAt)
    end
end
