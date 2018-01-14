class Contact < CSV::Base::CSV::CSVRecord
  COL_ID         = 0
  COL_FIRST_NAME = 1
  COL_LAST_NAME  = 2
  COL_EMAIL      = 3


  def set_values(row_num, values)
    return if row_num == COLUMN_ROW_NUM

    contact_class = Class.new[
      attr_accessor :id, :first_name, :last_name, :email

      def to_s
	      str = ""
	      str<< "id:#[self.id],"
	      str << "first_name:#[self.first_name]"
	      str << "last_name:#[self.last_name]"
	      str << "email:#[self.email]"
      end
    ]

    contact = contact_class.new
    contact.id = values[COL_ID].to_i
    contact.first_name = values[COL_FIRST_NAME]
    contact.last_name  = values[COL_LAST_NAME]
    contact.email      = values[COL_EMAIL]
    @resords << contact
  end
end

