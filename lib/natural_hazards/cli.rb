class NaturalHazards::CLI
    def call 
      puts "Welcome to Current Global Natural Hazard Information!"
        while @input != "exit"
      list_events
      puts "Please Choose an event number to learn more!"
      get_user_input
      validate(@input)
      options
     
    end 
      goodbye
    end
    
  
    def list_events
      NaturalHazards::Event.new(event).all.each {|e| puts "#{e.title}"}
  
    end
        
  
    def get_user_input
      @input = gets.strip
    end


    def validate(input)
      event = NaturalHazards::Event.find_by_id(input)
      event ?  show_event(event): invalid_input
    end

    def invalid_input
      puts "Sorry I don't understand, please enter a number from the list"
      get_user_input
    end

    def show_event(event)
      puts "#{index}"". " "#{event["title"]}"
    end

    def options
      puts "Type list to see the events again or exit to end the program!"
      get_user_input
    end

    def goodbye
      puts "Have a great day!"
    end
    
end