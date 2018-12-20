json.products @products do |product|
  json.(product, :id, :item_type, :unit_cost, :unit_price)
end
