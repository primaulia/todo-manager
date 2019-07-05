class Task
  attr_reader :name, :description
  attr_accessor :status

  def initialize(name, description = "")
    @name = name #String - User generated
    @description = description #String - User generated
    @status = false #Boolean - System generated
  end
end
