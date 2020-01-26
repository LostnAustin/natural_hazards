
gem install json
gem install pry
gem install httparty
gem install open-uri

require 'rubygems'
require 'pry'
require 'httparty'

response = HTTParty.get("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events")

puts response.body
 events = response["events"]


#   events.each do |e| puts "#{e.category}"
# binding.pry
# end

#puts response.code
#puts response.headers.inspect
#puts response.EONET_Events