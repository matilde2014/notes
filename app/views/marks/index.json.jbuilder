json.array!(@marks) do |mark|
  json.extract! mark, :id, :value, :description, :mdate
  json.url mark_url(mark, format: :json)
end
