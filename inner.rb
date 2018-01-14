#
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

#rails
class Library < ActiveRecord::Base
  has_many :books
  validates_associated :books
end

#rake
task :default => [:test]

task :test do
  ruby "test/unittest.rb"
end

#rspec
describe Bowlind do
  it "should score 0 for gutter game" do
    bowling = Bowling.new
    20.times { bowling.hit(0) }
    bowling.score.should == 0
  end
end

#caspistrano
role :libs, "takagotch.com"
task :search_libs do
  run "ls -x1 /usr/lib | grep -i xml"
end

