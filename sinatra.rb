require "sinatora"

get "/" do
  cache_control :public, :must_revalidate, :max_age => 60
  "Hello"
end
#def xxx=(value)
#  @xxx = value
#end
#
#xxx      = "local"  #a local variable
#self.xxx = "method" #method, substitution


