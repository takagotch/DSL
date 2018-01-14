require "sinatora"

get "/" do
  cache_control :public, :must_revalidate, :max_age => 60
  "Hello"
end

