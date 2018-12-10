class Api::ReportsController < ApplicationController

  def index
    @reports = Report.limit(100)
    render json: @reports
  end

  def show
    @report = Report.find(params[:id])
    render json: @report
  end
end