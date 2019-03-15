json.sales_reports @sales_reports do |report|
  json.region report.location.region
  json.country report.location.country
  json.item_type report.product.item_type
  json.unit_cost report.product.unit_cost
  json.unit_price report.product.unit_price
  json.total_revenue report.report.total_revenue
  json.total_cost report.report.total_cost
  json.total_profit report.report.total_profit
  json.order_number report.order_number
  json.order_priority report.order_priority
  json.sales_channel report.sales_channel
  json.units_sold report.units_sold
  json.order_date report.order_date.try(:strftime, "%m/%d/%Y")
  json.ship_date report.ship_date.try(:strftime, "%m/%d/%Y")
end