class Task < ActiveRecord::Base
  include CalculationHelper
  belongs_to :discipline

  def short_discipline_name
    discipline.name.titleize.split.map{|e| e[0] }.join(" ")
  end

  def importance
    task_importance(self)
  end

  def bar_status
    if ready == 100
      return "success"
    end
    koeff = importance
    if koeff <= 5
      "success"
    elsif koeff > 5 and koeff <=10
      "warning"
    elsif koeff > 10
      "danger"
    end
  end
end
