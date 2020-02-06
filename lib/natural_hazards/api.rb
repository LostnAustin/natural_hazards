class NaturalHazards::API
  
   def self.get_events
    server = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/events?limit=20" 
      response = HTTParty.get(server)
        events = response["events"]    
        NaturalHazards::Event.new_from_collection(events)
      end 
    end














    # def self.get_user_event
    #   server = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/events" 
    #   response = HTTParty.get(server)
    #   # response["events"].each do |event|
        #  puts "#{event["id"]}"". " "#{event["title"]}" 
    #     NaturalHazards::Event.new_from_collection(events)
         # # JSON.parse(response.body)
         # response["events"].each do |event|
         #     until count ==20
         # # puts "#{index}"". " 
         # "#{event["title"]}"
         # count +=1
         #     end 

  # puts response.body
#puts response.code
#puts response.headers.inspect
#puts response.EONET_Events   
