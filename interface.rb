require_relative 'task_repository'

puts "Creating 3 tasks"
t1 = Task.new('Buy a milk', 'I need for my cereal')
t2 = Task.new('Get some flower', 'Make my home nice')
t3 = Task.new('Complete the challenge', 'Have a good friday night!')
puts
puts "Creating a db that holds all those tasks"
db = TaskRepository.new #instance of TaskRepository
db.add(t1)
db.add(t2)
db.add(t3)
puts
puts "See all the tasks added to the db"
p db.all

puts
puts "find the second tasks"
second_task = db.find(2)

puts
puts "Mark one task as completed"
db.mark_as_completed(2)
puts
p second_task

puts
puts "Delete task #1"
db.delete(1)
puts
p db.all













