module Droonga
	module Plugins
		module CRUD
			class Adapter < Droonga::Adapter
				message.input_pattern = ["type", :equal, "add"]
				message.output_pattern = ["body.success", :exist?]

				def adapt_input(input_message)
				end

				def adapt_out(output_message)
				end
			end
		end
	end
end
#2
class Adapter < Droonga::Adapter
  input_pattern ["type", :equal, "add"]
  output_pattern ["body.success", :exist?]
end

class Droonga::Adapter
  class << self
    PATTEN_NIL = Object.new
    def input_pattern(patten=PATTERN_NIL)
      if PATTEN_nil == patten
        @input_pattern
      else
        @input_pattern = pattern
      end
    end
  end
end

class Droonga::Adapter
  class MessageConfigureration
    attr_accessor :input_pattern
    attr_accessor :output_pattern
    def initialize
      @input_pattern = nil
      @output_pattern = nil
    end
  end
  
  class << self
    def message
      @message ||= MessageConfiguration.new
    end
  end
end





oreder = Order.new
        .with(:LATTE,       :size=>:TALL,  :milk=>:SOY)
	.with(:CAPPUCCUINO, :size=>:SHORT, :milk=>:NON_FAT)
	.with(:AMERICANO,   :size=>:GRANDE)
	.prepare


