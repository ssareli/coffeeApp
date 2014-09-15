json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :task_id, :owner_id
  json.url favorite_url(favorite, format: :json)
end
