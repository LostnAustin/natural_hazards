class NaturalHazards::API
  
    def self.get_events
     response = HTTParty.get("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events", { 
        status: "open",
        limit: 20
      })
         events = response["events"]
        NaturalHazards::Event.new(events)
     end
  # puts response.body
#puts response.code
#puts response.headers.inspect
#puts response.EONET_Events 
      
  
    
    
    
end