namespace :import do
  desc "import sales records into the database"
  task import_sales_records: :environment do
    file = File.join Rails.root, "sales_records.csv"

    ImportService.new(file).import
    puts "Completed"
  end
end
