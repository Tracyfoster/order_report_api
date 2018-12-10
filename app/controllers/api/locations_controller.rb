class Api::LocationsController < ApplicationController

  def index
    @locations = Location.all.order('Region asc')
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end
end