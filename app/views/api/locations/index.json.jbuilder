json.locations @locations do |location|
  json.(location, :id, :region, :country)
end