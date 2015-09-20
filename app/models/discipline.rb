class Discipline < ActiveRecord::Base
  has_many :tasks
  has_many :lessons
end
