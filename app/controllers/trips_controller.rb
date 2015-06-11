class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    trip = Trip.new trip_params
    if trip.save
      redirect_to trips_path
    else
      render 'new'
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def destroy
    #binding.pry
    #Look uyp the planet in the database using the id from params
    trip = Trip.find(params[:id]).destroy
    trip.destroy
    #Delete planet from the database
    redirect_to(trips_path)
  end

end

private

  def trip_params
    params[:trip].permit(:from, :to, :location, :city_id)
  end