include TimestampParamsHelper

class HeatIndicesController < ApplicationController
  before_action :set_heat_index, only: [:show, :edit, :update, :destroy]

  # GET /heat_indices
  # GET /heat_indices.json
  def index
    @heat_indices = HeatIndex.all
  end

  # GET /heat_indices/1
  # GET /heat_indices/1.json
  def show
  end

  # GET /heat_indices/new
  def new
    @heat_index = HeatIndex.new
  end

  # GET /heat_indices/1/edit
  def edit
  end

  # POST /heat_indices
  # POST /heat_indices.json
  def create
    @heat_index = HeatIndex.new(packTimestampParams(heat_index_params))

    respond_to do |format|
      if @heat_index.save
        format.html { redirect_to @heat_index, notice: 'Heat index was successfully created.' }
        format.json { render :show, status: :created, location: @heat_index }
      else
        format.html { render :new }
        format.json { render json: @heat_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heat_indices/1
  # PATCH/PUT /heat_indices/1.json
  def update
    respond_to do |format|
      if @heat_index.update(packTimestampParams(heat_index_params))
        format.html { redirect_to @heat_index, notice: 'Heat index was successfully updated.' }
        format.json { render :show, status: :ok, location: @heat_index }
      else
        format.html { render :edit }
        format.json { render json: @heat_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heat_indices/1
  # DELETE /heat_indices/1.json
  def destroy
    @heat_index.destroy
    respond_to do |format|
      format.html { redirect_to heat_indices_url, notice: 'Heat index was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heat_index
      @heat_index = HeatIndex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heat_index_params
      params.require(:heat_index).permit(:sensorID, :value, :measuredAt)
    end
end
