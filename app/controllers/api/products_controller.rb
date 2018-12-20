class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(item_type: params[:item_type])
  end

  def self.find_or_create_product(row)
    product = Product.find_by(item_type: row["Item Type"])
    if product.blank?
      product = Product.create(
        item_type: row["Item Type"], 
        unit_cost: row["Unit Cost"], 
        unit_price: row["Unit Price"]
      )
    end
    product
  end
end