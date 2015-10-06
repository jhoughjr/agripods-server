class SmokeLevelsController < ApplicationController
  before_action :set_smoke_level, only: [:show, :edit, :update, :destroy]

  # GET /smoke_levels
  # GET /smoke_levels.json
  def index
    @smoke_levels = SmokeLevel.all
  end

  # GET /smoke_levels/1
  # GET /smoke_levels/1.json
  def show
  end

  # GET /smoke_levels/new
  def new
    @smoke_level = SmokeLevel.new
  end

  # GET /smoke_levels/1/edit
  def edit
  end

  # POST /smoke_levels
  # POST /smoke_levels.json
  def create
    @smoke_level = SmokeLevel.new(smoke_level_params)

    respond_to do |format|
      if @smoke_level.save
        format.html { redirect_to @smoke_level, notice: 'Smoke level was successfully created.' }
        format.json { render :show, status: :created, location: @smoke_level }
      else
        format.html { render :new }
        format.json { render json: @smoke_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smoke_levels/1
  # PATCH/PUT /smoke_levels/1.json
  def update
    respond_to do |format|
      if @smoke_level.update(smoke_level_params)
        format.html { redirect_to @smoke_level, notice: 'Smoke level was successfully updated.' }
        format.json { render :show, status: :ok, location: @smoke_level }
      else
        format.html { render :edit }
        format.json { render json: @smoke_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smoke_levels/1
  # DELETE /smoke_levels/1.json
  def destroy
    @smoke_level.destroy
    respond_to do |format|
      format.html { redirect_to smoke_levels_url, notice: 'Smoke level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smoke_level
      @smoke_level = SmokeLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smoke_level_params
      params.require(:smoke_level).permit(:sensorID, :value, :measuredAt)
    end
end
