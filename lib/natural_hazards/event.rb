class NaturalHazards::Event
   attr_accessor :title, :coordinates, :description, :event_id, :info, :id, :link, :categories, :sources, :geometries, :date, :type, :url, :attrs
  
   @@all = []
  
    def initialize(info)
      set_event_id
      attributes_from_hash(info)
      
      save
    end

    def set_event_id
      @event_id= @@all.length + 1
    end
  
    
    def self.new_from_collection(events) 
      until events.count == 20
        events.each do |attrs|
        new(attrs)
        end
      end
    
   
    def attributes_from_hash(info)  
       
    #  info.each do |k, v|
    #     send("#{k}=", v)
      info.each_with_object([]) do |(k,v), keys|
      keys << k 
        keys.concat(event_from_hash(v)) if v.is_a? Hash
        end
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