class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(tasks)
    i = 1
    tasks.each do |task|
      if task.status == true
      puts "#{i}. [x] #{task.name}"
      i +=1 
      else 
      puts "#{i}. [ ] #{task.name}"
      i +=1 
      end   
    end
  end  

  def create(task)
    p "Agregaste la tarea: #{task} a tu lista."
  end

  def delete(num_to_delete)

    p "Eliminaste la tarea: #{num_to_delete} de tu lista."
  end

  def update
  end

	def error
	end
end
