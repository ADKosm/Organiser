module MainHelper
  def show_week
    wday = (Time.now.wday - 1) % 7
    result = ''
    ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each_with_index do |el, index|
      is_active = wday == index ? 'class="active"' : ''
      result+="<li #{is_active}><a role='button' data-toggle='collapse' data-parent='#accordion' href='#collapse#{index}' aria-expanded='false' aria-controls='collapse#{index}'>#{el}</a></li>"
    end
    result.html_safe
  end

  def show_week_offset
    result_week = Time.now.beginning_of_week + (@week_offset*7).day
    text = "#{result_week.to_formatted_s(:short)} - #{result_week.advance(days: 6).to_formatted_s(:short)}"
    if @week_offset == 0
      text += " (this week)"
    end
    text
  end

end
