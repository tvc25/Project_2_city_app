class CitiesController < ApplicationController
  def index
    @cities = City.all
    @cities = City.order('name ASC')

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cities }
    end

  end

  def new
    @city = City.new
  end

  def create
    city = City.new city_params

    if city.save
      redirect_to cities_path
    else
      render 'new'
    end
  end

  def show
    @city = City.find(params[:id])
  end
  
  private
    def city_params
      params[:city].permit(:name, :population)
    end

end