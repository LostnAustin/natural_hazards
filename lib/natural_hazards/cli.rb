class NaturalHazards::CLI
    def call 
      puts "Welcome to Current Global Natural Hazard Information!"
      puts "Please choose an event (1-10) to learn more about..."
      list_events
    end
    
  
  
    def list_events
      NaturalHazards::Event.all.each {|e| puts "#{e.title}"}
      end
    end
        
  
end