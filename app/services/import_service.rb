require 'csv'

class ImportService
  def initialize(file)
    @file = file
  end

  def import(file_import: CsvImport.new)
    file_import.import(@file)
  end

  def self.import_sales_report(row)
    location = Api::LocationsController.find_or_create_location(row)
    product = Api::ProductsController.find_or_create_product(row)
    order = Api::OrdersController.create_order(row, location, product)
    Api::ReportsController.create_report(row, order)
  end
end
