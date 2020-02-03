class NaturalHazards::Event
   attr_accessor :title, :coordinates, :description, :event_id, :info, :id, :link, :categories, :sources, :geometries, :date, :type, :url, :events
  
   @@all = []
  
    def initialize(info)
      set_event_id
     event_from_hash(events)
      
      save
    end

    def set_event_id
      @event_id= @@all.length + 1
    end
  
    
    def self.new_from_collection(events) 
      events.each do |event|
       new(event)
      end
    end

   
    def event_from_hash(attrs)  
        # binding.pry
      attrs.each do |k, v|
        send("#{k}=", v)
      # .each_with_object([]) do |(k,v), keys|
      # keys << k
         
      #   keys.concat(event_from_hash(v)) if v.is_a? Hash
       end
    end
    
    def self.get_events
      NaturalHazards::API.get_events
      all
    end
    
    def self.all
      unless @@all != []
      get_events
      end
    end
    
    def save
      @@all << self
    end

    def self.find_by_id(user_response)
      all.find{|e| e.event_id == response.to_i}
    end

   
  
  
end 