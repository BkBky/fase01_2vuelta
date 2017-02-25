class TasksController
  def initialize#(args)
    @view = TasksView.new
    menu(args)
  end

  def menu(args)
    task = args[1..args.length].join(" ")
    option = args[0]
    case option
      when "index" then index.length
      when "add" then  add(task)
      when "delete" then  delete(task)
      when "complete" then complete(task)
    end
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    tasks = Task.all
    @view.index(tasks)
  end

  def add(task)
    users_input = Task.create(name: "#{task}")
    @view.create(task)
  end

  def delete(num_to_delete)
    #delete_row = Task.find(id).destroy
     task = Task.all
     task.each_with_index do |task_select, num|
       task_select.destroy if num + 1 == num_to_delete.to_i
     end

    @view.delete(num_to_delete)
  end

  def complete(num_to_complete)
    tasks = Task.all
    tasks.each_with_index do |task_select, num|
      task_select.update(status: true) if num + 1 == num_to_complete.to_i
    end
    #@view.index(tasks)

  end
end
