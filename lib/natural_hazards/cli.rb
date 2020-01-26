class NaturalHazards::CLI
    def call 
      puts "Welcome to Current Global Natural Hazard Information!"
      puts "Please choose an event (1-10) to learn more about..."
      list_events
      get_user_input
      
      goodbye
    end
    
  
  
    def list_events
      NaturalHazards::Event.all.each.with_index do |e, index|
        puts "#{index}" ". " "#{e.title}"
      end
    end
        
  
    def get_user_input
      @input = gets.strip
    end
    
    def goodbye
      puts "Have a great day!"
    end
    
end