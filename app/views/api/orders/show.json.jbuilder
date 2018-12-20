json.(@order, :id, :order_number, :order_priority, :sales_channel, :units_sold, :location_id, :product_id)
json.order_date @order.order_date.try(:strftime, "%m/%d/%Y")
json.ship_date @order.ship_date.try(:strftime, "%m/%d/%Y")