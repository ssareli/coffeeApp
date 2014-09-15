json.array!(@owners) do |owner|
  json.extract! owner, :id, :task_id, :name, :email, :password, :favorite_id
  json.url owner_url(owner, format: :json)
end
