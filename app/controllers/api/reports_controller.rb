class Api::ReportsController < ApplicationController

  def index
    @reports = Report.limit(100)
  end

  def show
    @report = Report.find(params[:id])
  end

  def self.create_report(row, order)
    Report.create(
      total_revenue: row["Total Revenue"], 
      total_cost: row["Total Cost"], 
      total_profit: row["Total Profit"], 
      order: order
    )
  end
end