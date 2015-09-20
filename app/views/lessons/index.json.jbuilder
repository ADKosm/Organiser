json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :name, :type, :discipline_id, :day
  json.url lesson_url(lesson, format: :json)
end
