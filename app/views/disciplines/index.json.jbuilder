json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :name, :description, :time_beg, :time_end
  json.url discipline_url(discipline, format: :json)
end
