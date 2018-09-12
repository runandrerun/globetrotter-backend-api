class LocationsController < ApplicationController
  def index
    @locations = Location.all
    if params[:city]
      @location = Location.find_by(city: params[:city])
      render json: @location.id
    else
      render json: @locations
    end
  end

  # GET /locations/1
  def show

    @location = Location.find(params[:id])
    render json: @location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = location.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def location_params
      params.require(:location).permit(:name, :lng, :lat)
    end
end
