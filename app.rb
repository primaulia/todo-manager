require_relative 'router'
require_relative 'controller'
require_relative 'task_repository'
require_relative 'view'

db = TaskRepository.new
view = View.new
controller = Controller.new(db, view)
router = Router.new(controller)
router.run
