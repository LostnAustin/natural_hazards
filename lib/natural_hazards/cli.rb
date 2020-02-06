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
      NaturalHazards::Event.all.each.with_index {|e, index| puts "#{index +1}" ". " "#{e.title}"}
    end
        
    def get_user_input
      @input = gets.chomp
    end

    def validate(input)
      event = NaturalHazards::Event.find_by_id(input)
      event ?  show_event(event): invalid_input
    end

    def invalid_input
      puts "Sorry I don't understand, please enter one of the options listed above!"
      get_user_input
    end


    def show_event(event)
      puts "#{event.title}" "#{event.description}" 
      puts ""
      puts "#{event.geometries}"
    end

    def options
      puts ""
      puts "Type 'list' to see the events again, or 'exit' to end the program!"
       answer = gets.chomp
        if answer == "list"
          list_events
        elsif answer == "exit"
          goodbye
        elsif answer != ('list' || 'exit')
          puts "I'm sorry I don't understand, please choose from the options listed!"
          puts 
          options
        
        end 
    end

    def goodbye
      puts "Have a great day!"
      exit
    end
    
end