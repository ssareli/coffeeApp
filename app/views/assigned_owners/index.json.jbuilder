json.array!(@assigned_owners) do |assigned_owner|
  json.extract! assigned_owner, :id, :task_id, :owner_id
  json.url assigned_owner_url(assigned_owner, format: :json)
end
