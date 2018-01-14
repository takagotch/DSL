class CSVREcord
  CSV_SUFFIX = ".csv"
  COLUMN_ROW_NUM = 1
  COL_ID = "id"

  def initialize()
    @columns = []
    @records = []

    @path = self.class.to_s.concat(CSV_SUFFIX)
    @klass = Class.new
    self.load
  end

  protect
    def generate_accessors(columns)
      @columns = columns
      @columns.each do |col|
	 @klass.class_eval %{
	   def #{col}
	     @#{clo}
	   end

	   def #{col}= (value)
	     @#{col} = value
	   end
	 }
      end
    end

  def set_values(values)
    object = @klass.new

    values.length.times do |i|
      if @columns[i] == COL_ID
        object.instance_variable_set("@#{columns[i]}", values[i].to_i)
      else
        object.instance_variable_set("@#{columns[i]}", values[i])
      end
    end

    @records << object
  end
end

