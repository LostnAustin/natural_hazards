class NaturalHazards::API
  
    def self.get_events
     response = HTTParty.get("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events")
         events = response["events"]
        NaturalHazards::Event.new_from_collection(events)
    end
 end
  # puts response.body
#puts response.code
#puts response.headers.inspect
#puts response.EONET_Events   
