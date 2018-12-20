json.reports @reports do |report|
  json.(report, :id, :total_revenue, :total_cost, :total_profit, :order_id)
end
