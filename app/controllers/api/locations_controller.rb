class Api::LocationsController < ApplicationController

  def index
    @locations = Location.all.order('Region asc')
  end

  def show
    @location = Location.find(params[:id])
  end

  def self.find_or_create_location(row)
    Location.find_or_create_by(region: row["Region"], country: row["Country"])
  end
end