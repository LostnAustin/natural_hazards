class NaturalHazards::Event
   attr_accessor :title, :coordinates, :description, :event_id, :events, :id, :link, :categories, :sources, :geometries, :date, :type, :url, :attrs
  
   @@all = []
  
    def initialize(event)
      set_event_id
      attributes_from_hash(event)
      
      save
    end

    def set_event_id
      @event_id= @@all.length + 1
    end
  
    
    def self.new_from_collection(events) 
        events.each do |attrs|
        new(attrs)
        end
      end 
   
    def attributes_from_hash(event)  
    #  create and send key/value pairs + nested k/v pairs 
     event.each do |k, v|
        send("#{k}=", v)
     end
      event.each_with_object([]) do |(k,v), keys|
      keys << k 
        keys.concat(event_from_hash(v)) if v.is_a? Hash
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
        @@all
    end
    
    def save
      @@all << self
    end

    def self.find_by_id(input)
      all.find{|e| e.event_id == input.to_i}
    end

   
  
  
end 