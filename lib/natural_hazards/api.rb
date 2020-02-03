class NaturalHazards::API
  

   def self.get_events
       response = HTTParty.get("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events?limit=10")

       events = JSON.parse(response.body)
         # events.each.with_index do |event|
         #    # puts "#{event}"
       NaturalHazards::Event.new_from_collection(events)
        
       # # JSON.parse(response.body)
         # response["events"].each do |event|
         #     until count ==20
         # # puts "#{index}"". " 
         # "#{event["title"]}"
         # count +=1
         # binding.pry
         #     end 
         # end
   end
end
  # puts response.body
#puts response.code
#puts response.headers.inspect
#puts response.EONET_Events   
