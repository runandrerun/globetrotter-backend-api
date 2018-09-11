class TripLocationsController < ApplicationController
def index
  @trip_locations = TripLocation.all

  render json: @trip_locations
end

# GET /trip_locations/1
def show
  @trip_location = TripLocation.find(params[:id])
  render json: @trip_location
end

# POST /trip_locations
def create
  @trip_location = TripLocation.new(trip_location_params)

  if @trip_location.save
    render json: @trip_location, status: :created, location: @trip_location
  else
    render json: @trip_location.errors, status: :unprocessable_entity
  end
end

# PATCH/PUT /trip_locations/1
def update
  if @trip_location.update(trip_location_params)
    render json: @trip_location
  else
    render json: @trip_location.errors, status: :unprocessable_entity
  end
end

# DELETE /trip_locations/1
def destroy
  @trip_location.destroy
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_trip_location
    @trip_location = TripLocation.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def trip_location_params
    params.require(:trip_location).permit(:location_id, :trip_id)
  end
end
