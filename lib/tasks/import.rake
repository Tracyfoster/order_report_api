namespace :import do
  require 'csv'

  desc "import sales records into the database"
  task import_sales_records: :environment do
    filename = File.join Rails.root, "sales_records.csv"

    CSV.foreach(filename, headers: true) do |row|
      # Create the region and country if it doesn't exist
      location = Location.find_or_create_by(region: row["Region"], country: row["Country"])

      # create or find the product type
      product = Product.find_by(item_type: row["Item Type"])
      if product.blank?
        product = Product.create(
          item_type: row["Item Type"], 
          unit_cost: row["Unit Cost"], 
          unit_price: row["Unit Price"]
        )
      end

      # create the order
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

      # create the report
      Report.create(
        total_revenue: row["Total Revenue"], 
        total_cost: row["Total Cost"], 
        total_profit: row["Total Profit"], 
        order: order
      )
    end
    p "All records has been imported"
  end
end
