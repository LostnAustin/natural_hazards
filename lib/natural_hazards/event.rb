class NaturalHazards::Event
   attr_accessor :title, :coordinates, :description
  
   @@all = []
  
    def initialize(info)
      save
    end
  
    def self.new_from_collection(events)
      events.each do |info|
       new(info)
      end
    end
  
    def info_from_hash(info)
      info.each do |key, value|
       send("#{key}=", value)
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
  
end 