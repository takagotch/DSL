class CSVHash < CSV::Base::CSVRecord
  def set_values(row_num, values)
    if(row_num == 1)
      @columns = values

    else
      hash = []

      values.length.times do |i|
        hash[@columns[i]] = values[i]
      end
      @records << hash
    end
  end
end

