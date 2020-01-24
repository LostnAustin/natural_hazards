class NaturalHazards::API
  
    def self.get_events
      response = HTTParty.get("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events&limit=10")
      events = response["events"]
      NaturalHazards::Event.new(events)
      
    end
    
    
    
end