class SummaryController < ApplicationController
  def index
    @sales_reports = Order.includes(:location, :product, :report).limit(100)
  end
end
