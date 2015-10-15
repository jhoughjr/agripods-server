include TimestampParamsHelper

class SensorErrorsController < ApplicationController
  before_action :set_sensor_error, only: [:show, :edit, :update, :destroy]

  # GET /sensor_errors
  # GET /sensor_errors.json
  def index
    @sensor_errors = SensorError.all
  end

  # GET /sensor_errors/1
  # GET /sensor_errors/1.json
  def show
  end

  # GET /sensor_errors/new
  def new
    @sensor_error = SensorError.new
  end

  # GET /sensor_errors/1/edit
  def edit
  end

  # POST /sensor_errors
  # POST /sensor_errors.json
  def create
    @sensor_error = SensorError.new(packTimestampParams(ensor_error_params))

    respond_to do |format|
      if @sensor_error.save
        format.html { redirect_to @sensor_error, notice: 'Sensor error was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_error }
      else
        format.html { render :new }
        format.json { render json: @sensor_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_errors/1
  # PATCH/PUT /sensor_errors/1.json
  def update
    respond_to do |format|
      if @sensor_error.update(packTimestampParams(ensor_error_params))
        format.html { redirect_to @sensor_error, notice: 'Sensor error was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_error }
      else
        format.html { render :edit }
        format.json { render json: @sensor_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_errors/1
  # DELETE /sensor_errors/1.json
  def destroy
    @sensor_error.destroy
    respond_to do |format|
      format.html { redirect_to sensor_errors_url, notice: 'Sensor error was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_error
      @sensor_error = SensorError.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_error_params
      params.require(:sensor_error).permit(:sensorID, :value, :occurredAt)
    end
end
