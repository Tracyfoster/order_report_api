class Api::OrdersController < ApplicationController

  def index
    @orders = Order.paginate(:page => params[:page], :per_page => 10)
    render json: @orders
  end

  def show
    @order = Order.find(params[:order_number])
    render json: @order
  end
end