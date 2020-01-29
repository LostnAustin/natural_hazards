class NaturalHazards::Event
   attr_accessor :title, :coordinates, :description, :event_id
  
   @@all = []
  
    def initialize(info)
      set_event_id
      info_from_hash(info)
      save
    end

    def set_event_id
      @event_id = @@all.length + 1
    end
  
    def self.new_from_collection(events)
      events.each do |info|
       new(info)
      end
    end
  
    def info_from_hash(info)
      binding.pry
      info.each do |k, v|
       send("#{k}=", v)
      
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

    def self.find_by_id(response)
      all.find{|e| e.event_id == response.to_i}
    end
  
end 