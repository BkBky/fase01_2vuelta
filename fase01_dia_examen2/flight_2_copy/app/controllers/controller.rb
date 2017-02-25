class Controller 
  def initialize
    @view = View.new
    index
  end
 
  def index
    input = @view.index
    case input
    when "1"
      
      login_input = @view.login
      login_user(login_input)
    when "2" then login
    end
  end

  def login_user(login_input)
    @user = User.find_by(name: login_input[0], password: login_input[1])
 
    if @user 
        input = @view.bookings
        menu_bookings(input)
     else 
       @view.user_not_found
     end   
  end

  def menu_bookings(option)
    case option
      when "1" 
        input_booking = @view.bookings_one
        select_flight(input_booking)
    end

    # new_user_inputs = @view.register
    # login(new_user_inputs)
  end

  def select_flight(input_booking)
    p input_booking
    @new_search = []
    new_seach_selection = []
    
    @flights = Flight.where(from: input_booking[0], to: input_booking[1], date: input_booking[2])
 
    @flights.each do |flight|
         if flight.passengers.to_i >= input_booking[3].to_i
          @new_search << [flight.num_flight, flight.date, flight.depart, flight.from, flight.to, flight.duration, flight.cost, flight.passengers]
        end
    end  
    input_search_one = @view.search_result(@new_search)

    @new_search.each_with_index do |search, index|
      if (input_search_one.to_i - 1) == index
        new_seach_selection << search  
         # new_num_passengers = @flights.find_by(passengers: search[7])
         # new_num_passengers.update(passengers: (search[7]-input_booking[3].to_i))
       end
    end
    input_data_person = @view.search_selections(new_seach_selection)  
    puts "datos capturados despues del times del view"
    input_data_person.each do |data_person|
      User.create(name: data_person[0], email: data_person[1])
    end
    p "despues de haber ingresado usuarios"
    p @new_search
    p input_search_one
    
    #Eliminate seats from de flight when a booking has been made
    if @new_search
       new_num_passengers = @flights.find_by(passengers: @new_search[0][7])
       new_num_passengers.update(passengers: (@new_search[0][7]-input_booking[3].to_i))
    end
    

  end

  def complete
  end
end
