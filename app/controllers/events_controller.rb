class EventsController < ApplicationController
  def index
    @events = Event.all
  end


  private
  def city_params
    params[:event].permit(:name, :description :url, :start_time, :end_time, :city_id, :lattitude, :longitude)
  end

end