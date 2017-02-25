class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
  
	def index
    puts"\n\n********************************" 
    puts "      Bienvenido a Maratón     "
    puts"********************************" 
    puts "Escoje una opción:"
    puts "1. Registrarse"
    puts "2. Ver Scores"
    puts "3. Jugar"
    puts "4. Salir\n\n"

    puts "Tendras que registrarte para poder jugar\n\n\n"
    input_user = gets.chomp
    #@controller = Controller.new
    #@controller.menu_register(input_user)

	end

  def menu_register
    p estas en el menu register
  end

  def delete
  end

  def update
  end

	def error
	end
end
