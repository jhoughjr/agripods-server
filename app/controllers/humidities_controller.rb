class HumiditiesController < ApplicationController
  before_action :set_humidity, only: [:show, :edit, :update, :destroy]

  # GET /humidities
  # GET /humidities.json
  def index
    @humidities = Humidity.all
  end

  # GET /humidities/1
  # GET /humidities/1.json
  def show
  end

  # GET /humidities/new
  def new
    @humidity = Humidity.new
  end

  # GET /humidities/1/edit
  def edit
  end

  # POST /humidities
  # POST /humidities.json
  def create
    @humidity = Humidity.new(scrubbedParams)

    respond_to do |format|
      if @humidity.save
        format.html { redirect_to @humidity, notice: 'Humidity was successfully created.' }
        format.json { render :show, status: :created, location: @humidity }
      else
        format.html { render :new }
        format.json { render json: @humidity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /humidities/1
  # PATCH/PUT /humidities/1.json
  def update
    respond_to do |format|
      if @humidity.update(scrubbedParams)
        format.html { redirect_to @humidity, notice: 'Humidity was successfully updated.' }
        format.json { render :show, status: :ok, location: @humidity }
      else
        format.html { render :edit }
        format.json { render json: @humidity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humidities/1
  # DELETE /humidities/1.json
  def destroy
    @humidity.destroy
    respond_to do |format|
      format.html { redirect_to humidities_url, notice: 'Humidity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def scrubbedParams
    year = humidity_params["measuredAt(1i)"].to_i
    month = humidity_params["measuredAt(2i)"].to_i
    day = humidity_params["measuredAt(3i)"].to_i
    hour = humidity_params["measuredAt(4i)"].to_i
    minute = humidity_params["measuredAt(5i)"].to_i

    dateTimeFromParams = DateTime.new(year, month, day)
    excludedParams = ["measuredAt(1i)","measuredAt(2i)","measuredAt(3i)","measuredAt(4i)","measuredAt(5i)"]

    theParams = humidity_params.except(excludedParams)
    theParams[:measuredAt] = dateTimeFromParams
    return theParams
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_humidity
      @humidity = Humidity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def humidity_params
      params.require(:humidity).permit(:sensorID, :value, :measuredAt)
    end
end
