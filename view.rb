class View
  def ask_user_task_name
    puts "What's the task name"
    task_name = gets.chomp
    return task_name
  end

  def display_all_tasks(all_tasks)
    all_tasks.each do |task|
      # p task
      puts "#{task.name} - #{task.description} [#{task.status}]"
    end
  end
end
