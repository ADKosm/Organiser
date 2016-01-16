class Discipline < ActiveRecord::Base
  has_many :tasks
  has_many :lessons

  after_destroy :delete_tasks_and_lessons

  def delete_tasks_and_lessons
    [self.tasks, self.lessons].each do |mod|
      mod.each { |m| m.destroy }
    end
  end
end
