class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.find_by(item_type: params[:item_type])
    render json: @product
  end
end