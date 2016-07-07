json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :hours
  json.url subject_url(subject, format: :json)
end
