class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
  
	def index
    puts"\n\n********************************" 
    puts "      Bienvenido a Maratón     "
    puts"********************************" 
    puts "Escoje una opción:"
    puts "1. Crear cuenta"
    puts "2. Jugar"
    puts "3. Ver Scores"
    puts "4. Salir\n\n"

    puts "Si aún no tienes una cuenta, tendrás que hacerlo para poder jugar\n\n\n"
    input_user = gets.chomp
	end

  def register
    puts"\n\n********************************" 
    puts "      Crear cuenta de usuario    "
    puts"********************************" 
    puts "ingresa tu Nombre"
    input_user_name = gets.chomp
    puts "Ingresa tu email"
    input_user_email = gets.chomp
    puts "Ingresa tu password"
    input_user_pass = gets.chomp
    new_user = [input_user_name, input_user_email, input_user_pass] 
  end

  def login
    puts"\n\n********************************" 
    puts "            Login              "
    puts"********************************" 

    puts "ingresa tu nombre"
    input_signup_name = gets.chomp
    puts "ingresa tu password"
    input_signup_pass = gets.chomp
    signup = [input_signup_name, input_signup_pass]
  end
  def user_not_found
    puts "Usuario y/o contraseña incorrectas"
  end

  def play
    puts"\n\n********************************" 
    puts "     Bienvenido al juego       "
    puts"********************************" 
    puts "Escoge un deck"
    puts "1. Geografía"
    puts "2. Historia"
    puts "3. Entretenimiento"
    
    input_to_play = gets.chomp
  end

  def show_geography_view(new_question, new_list)
    puts"\n\n********************************" 
    puts "       Deck 1.Geografía        "
    puts"********************************" 
  
    puts "#{new_question}"
    puts "a) #{new_list[0][0]}      b) #{new_list[1][0]}      c) #{new_list[2][0]}\n\n"
    input_gamer = gets.chomp
    
	end

    def result_geography(correct_answers, incorrect_answers)
      puts "Obtuviste #{correct_answers} respuesta(s) correcta(s)"
      puts "Obtuviste #{incorrect_answers} respuesta(s) incorrecta(s)"
    end
    

end
