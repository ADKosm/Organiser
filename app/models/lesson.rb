class Lesson < ActiveRecord::Base
  belongs_to :discipline

  enum kind: { lecture: 0, seminar: 1 }
  enum day: {monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6}

  def get_day_in_i
    Lesson.days[day]
  end

end
