class PreviousCitiesController < ApplicationController
  before_action :set_previous_city, only: [:show, :edit, :update, :destroy]

  # GET /previous_cities
  # GET /previous_cities.json
  def index
    @previous_cities = PreviousCity.all
  end

  # GET /previous_cities/1
  # GET /previous_cities/1.json
  def show
  end

  # GET /previous_cities/new
  def new
    @previous_city = PreviousCity.new
  end

  # GET /previous_cities/1/edit
  def edit
  end

  # POST /previous_cities
  # POST /previous_cities.json
  def create
    @previous_city = PreviousCity.new(previous_city_params)

    respond_to do |format|
      if @previous_city.save
        format.html { redirect_to @previous_city, notice: 'Previous city was successfully created.' }
        format.json { render :show, status: :created, location: @previous_city }
      else
        format.html { render :new }
        format.json { render json: @previous_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /previous_cities/1
  # PATCH/PUT /previous_cities/1.json
  def update
    respond_to do |format|
      if @previous_city.update(previous_city_params)
        format.html { redirect_to @previous_city, notice: 'Previous city was successfully updated.' }
        format.json { render :show, status: :ok, location: @previous_city }
      else
        format.html { render :edit }
        format.json { render json: @previous_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previous_cities/1
  # DELETE /previous_cities/1.json
  def destroy
    @previous_city.destroy
    respond_to do |format|
      format.html { redirect_to previous_cities_url, notice: 'Previous city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_previous_city
      @previous_city = PreviousCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def previous_city_params
      params.require(:previous_city).permit(:city)
    end
end
