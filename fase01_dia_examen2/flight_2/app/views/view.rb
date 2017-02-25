class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
  
	def index
    puts "Menú de Bienvenida:"

    puts "Bienvenido a Vuelos Codea"
    puts "--------------------------------------------------"
    puts "1) Reservaciones"
    puts "2) Administrador"
    puts "3) Registrarse (si aún no tienes cuenta)"
    puts "4) Salir"

    puts "Selecciona opción:" 
    puts  
    input_user = gets.chomp
  end

  def login
    puts"\n\n--------------------------------------------------"
    puts "                     Login                       "
    puts"--------------------------------------------------"

    puts "ingresa tu nombre"
    input_login_name = gets.chomp
    puts "ingresa tu password"
    input_login_pass = gets.chomp
    # puts "Escribe 'true' si eres administrador"
    # input_login_admon = gets.chomp
    login = [input_login_name, input_login_pass] #input_login_admon]
  end

  def user_not_found
    puts "Usuario y/o contraseña incorrectas"
  end

  def bookings
    puts "\n\n--------------------------------------------------"
    puts "               ¡¡¡Bienvenido!!!              "   
    puts "--------------------------------------------------"
    puts "1) Encuentra tu boleto de avión"
    puts "2) Salir" 
    puts
    puts "Selecciona una opción:"
  
    puts
    input_user = gets.chomp
  end

	def bookings_one
  puts "--------------------------------------------------"
  puts "             ¡¡¡Encuentra tu vuelo!!!             "
  puts "--------------------------------------------------"
  puts "From (Western Sahara):"
  input_b1 = gets.chomp
  puts "To (Saudi Arabia):"
  input_b2 = gets.chomp
  puts "Date (2015-06-15):"
  input_b3 = gets.chomp
  puts "Passengers (1, 2, 3, 4...):"
  input_b4 = gets.chomp
  @input_bookings = [input_b1, input_b2, input_b3, input_b4]
  end
  
  def search_result(new_search1)  
    puts "Vuelos disponibles From: Western Sahara To: Saudi Arabia\n\n"
    i = 0 
    optionid = 1 
    while i < new_search1.length
      puts "\n\n---------------------------------------------------------------------"
      puts "#{optionid}) No Vuelo: #{new_search1[i][0]}"
      puts "Date: #{new_search1[i][1]} , Depart: #{new_search1[i][2]} From: #{new_search1[i][3]}" 
      puts "To: #{new_search1[i][4]}, Duration: #{new_search1[i][5]}, Precio: #{new_search1[i][6]}, Lugares: #{new_search1[i][7]}"
      puts "---------------------------------------------------------------------"
      i+=1
      optionid+=1
    end
    @input_search = gets.chomp
  end
  def search_selections(new_seach_selection) 
    puts "-------------------------------------------------------------------------"
    puts "Número de Vuelo Seleccionado: #{new_seach_selection[0][0]}"
    puts "-------------------------------------------------------------------------"    
    puts "Date: #{new_seach_selection[0][1]}, Depart: #{new_seach_selection[0][2]}"
    puts "From: #{new_seach_selection[0][3]}, To: #{new_seach_selection[0][4]}, Duration: #{new_seach_selection[0][5]}, Precio: #{new_seach_selection[0][6]}"
    puts "-------------------------------------------------------------------------" 
    p "en metodo new_seach_selection VIEW"
    person = 0
    data_person = []
    @input_bookings[3].to_i.times do |i|
      
      puts  "Datos de Persona #{person += 1}"
      
      puts "Ingresa tu nombre :"
      data_person1 = gets.chomp
      #puts " Magick J."
      puts "email:"
      data_person2 = gets.chomp
      #puts "magick@gmail.com"
      data_person << [data_person1, data_person2]
      puts "\n\n"
    end
    data_person
  end

      #(num_flight: '96384', date: '2015-06-15', depart:'11:17:16 UTC', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'829.50', passengers:'8')
end
