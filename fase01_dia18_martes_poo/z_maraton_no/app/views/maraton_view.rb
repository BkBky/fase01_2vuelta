class MaratonView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def begin (random_category, random_question)
    puts "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta."  
    puts "Listo?  Arranca el juego!"

    puts "Pregunta de la categoría #{ramdon_category}"
    puts "#{random_question}"    

	end

  def error
  end

  def correct
  end

  def total_answer
    puts "Acabaste:"
    puts "Tuviste #{} Correctas y #{} Incorrectas." 
     
  end

	
end
