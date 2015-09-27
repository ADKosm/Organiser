module CalculationHelper
  def task_importance(task)

    time_delta = ((task.deadline - Date.today) ).round

    if time_delta != 0
      task.raiting / time_delta
    else
      task.raiting * 2
    end
  end
end