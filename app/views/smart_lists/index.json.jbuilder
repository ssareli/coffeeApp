json.array!(@smart_lists) do |smart_list|
  json.extract! smart_list, :id
  json.url smart_list_url(smart_list, format: :json)
end
