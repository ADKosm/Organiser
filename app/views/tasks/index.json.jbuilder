json.array!(@tasks) do |task|
  json.extract! task, :id, :description, :name, :raiting, :deadline, :ready
  json.url task_url(task, format: :json)
end
