class Api::OrdersController < ApplicationController

  def index
    @orders = Order.limit(10)
  end

  def show
    @order = Order.find_by(order_number: params[:order_number])
  end

  def self.create_order(row, location, product)
    order = Order.create(
      order_number: row["Order ID"],
      units_sold: row["Units Sold"],
      order_priority: row["Order Priority"],
      sales_channel: row["Sales Channel"],
      order_date: Date.strptime(row["Order Date"], '%m/%d/%Y'),
      ship_date: Date.strptime(row["Ship Date"], '%m/%d/%Y'),
      location: location,
      product: product
    )
  end
end