class NaturalHazards::CLI
    def call 
      puts "Welcome to Current Global Natural Hazard Information!"
      
      list_events
     
      get_user_input
      
      goodbye
    end
    
  
  
    def list_events
      puts "Please choose an event (1-100) to learn more about..."
      # binding.pry
      NaturalHazards::Event.all.each {|e| puts "#{e.title}"}
      
    end
        
  
    def get_user_input
      @input = gets.strip
    end
    
    def goodbye
      puts "Have a great day!"
    end
    
end