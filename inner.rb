attr_reader :id, :age
attr_writer :name
attr_accessor :color

class Module
  def attr_reader(*symbols)
    symbols.each do |symbol|
      class_eval %{
        def #{symbol}
	  @#{symbol}
	end
      }
    end
  end
end

def attr_writer(*symbols)
  symbols.each do |symbol|
    class_eval %{
      def #{symbol}= (value)
        @#{symbol} = value
      end
    }
  end
end

def attr_accessor(*symbols)
  attr_reader(symbols)
  attr_writer(symbols)
end

