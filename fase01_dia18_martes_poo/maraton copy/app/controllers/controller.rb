class Controller 
  def initialize
    @view = View.new
    index
  end
 


  # def menu_one(input_user)
    
  #   task = args[1..args.length].join(" ")
  #   option = args[0]
  #   case option
  #     when "index" then index
  #     when "add" then  add(task)
  #     when "delete" then  delete(task)
  #     when "complete" then complete(task)
  #   end
  # end


  def index
    @view.index
  end

  def menu_register(input_user)
    if input_user == 1
      @view.menu_register
    end
  end

  def delete
  end

  def complete
  end
end
