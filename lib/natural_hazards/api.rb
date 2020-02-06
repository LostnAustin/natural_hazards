class NaturalHazards::API
  
   def self.get_events
    server = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/events?limit=20" 
      response = HTTParty.get(server)
        events = response["events"]    
        NaturalHazards::Event.new_from_collection(events)
      end 
    end




