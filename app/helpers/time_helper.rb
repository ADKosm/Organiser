module TimeHelper
  def get_next_lesson_time(discipline_id)
    lesson_time = Time.new
    now = Time.now
    wday = (now.wday - 1) % 7
    @lesson = Lesson.where("discipline_id = ? AND day > ?", discipline_id, wday).order(:day)

    if @lesson.empty?
      @lesson = Lesson.where("discipline_id = ?", params[:discipline].to_i).order(:day)

      if @lesson.empty?
        lesson_time = now
      else
        lesson_time = now + ( 7 - wday + Lesson.days[@lesson[0].day] ).day
      end

    else


      lesson_time = now + ( Lesson.days[@lesson[0].day] - wday ).day

    end

    lesson_time

  end

  def get_next_time_by_day(day)
    next_time = Time.now
    now = Time.now
    wday = (now.wday - 1) % 7
    if day < wday
      next_time = now + ( 7 - wday + day ).day
    else
      next_time = now + (day - wday).day
    end

    next_time

  end
end