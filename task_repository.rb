require_relative 'task'

class TaskRepository
  def initialize
    @tasks = []
  end

  def add(new_task) #add new task
    # what happened to the new_task
    # push it to the @tasks array
    @tasks << new_task
  end

  def find(task_index) #find one task by the index of the array
    return @tasks[task_index - 1]
  end

  def all # show all tasks
    return @tasks
  end

  def mark_as_completed(task_index) # add a tick mark to the task
    @tasks[task_index - 1].status = true
  end

  def delete(task_index)
    @tasks.delete_at(task_index - 1)
  end
end





























