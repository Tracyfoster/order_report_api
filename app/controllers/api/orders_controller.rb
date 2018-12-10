class Api::OrdersController < ApplicationController

  def index
    @orders = Order.limit(100)
    render json: @orders
  end

  def show
    @order = Order.find(params[:order_number])
    render json: @order
  end
end