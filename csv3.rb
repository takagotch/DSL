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
    
    end

  def set_values(values)
  
  end
end

