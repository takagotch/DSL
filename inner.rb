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


