require 'roo'

class ExcelImport
  def import(file)
    record = UpdateRecords.new
    spreadsheet = Roo::Spreadsheet.open file
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      ImportService.import_sales_report(row)
    end
  end
end