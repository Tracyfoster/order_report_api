require 'csv'

class CsvImport
  def import(file)
    CSV.foreach(file, headers: true) do |row|
      ImportService.import_sales_report(row)
    end
  end
end
