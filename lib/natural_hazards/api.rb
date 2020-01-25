class NaturalHazards::API
  
    def self.get_events
     response = HTTParty.get("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events")
      events = response["events"]
      events.each do |e| puts "#{e.title}"
    #  puts "#{events}"
        NaturalHazards::Event.new(events)
  end
  # puts response.body
#puts response.code
#puts response.headers.inspect
#puts response.EONET_Events 
      
    end
    
    
    
end