class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "\n---"
      puts 'What do you want to do?'
      puts '1 - Display tasks'
      puts '2 - Add a new task'
      puts '3 - Mark a task as done'
      puts '4 - Remove a task'
      puts '5 - Quit the app'
      puts '---'

      action = gets.chomp.to_i

      case action
      when 1 then @controller.list_tasks
      when 2 then @controller.add_task
      when 3 then puts "MARK ONE TASK AS DONE"
      when 4 then puts "DELETE A TASK"
      when 5 then break
      else
        puts "Please type 1, 2, 3 or 4 :)"
      end
    end
  end
end
