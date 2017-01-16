json.array!(@evaluable_items) do |evaluable_item|
  json.extract! evaluable_item, :id, :name, :remarks, :subject_id
  json.url evaluable_item_url(evaluable_item, format: :json)
end