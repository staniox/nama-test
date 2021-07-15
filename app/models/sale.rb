class Sale < ApplicationRecord
  def Sale.import_file(file)
    file_content = file.read.force_encoding("UTF-8")
    file_array = file_content.lines.map { |line| line.split("\t") }
    file_array.each_with_index do |item, index|
      if index > 0
        @sale = Sale.new
        @sale.buyer = item[0]
        @sale.description= item[1]
        @sale.unit_price= item[2]
        @sale.amount= item[3]
        @sale.address= item[4]
        @sale.provider= item[5]
        @sale.save
      end
    end
  end
end
