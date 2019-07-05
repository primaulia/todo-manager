class Controller
  def initialize(task_repository, view)
    @task_repository = task_repository
    @view = view
  end

  def add_task
    # ask the user what's the task name
    # get the user input
    new_task_name = @view.ask_user_task_name
    # take the user input, pass it to @task_repository
    new_task = Task.new(new_task_name)
    @task_repository.add(new_task)
    # @task_repository.add needs to be called with the new task name
  end

  def list_tasks
    # get all tasks from the db
    all_tasks = @task_repository.all
    # pass it to the view
    @view.display_all_tasks(all_tasks)
  end
end

















