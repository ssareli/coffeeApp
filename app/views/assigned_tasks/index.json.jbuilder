json.array!(@assigned_tasks) do |assigned_task|
  json.extract! assigned_task, :id, :task_id, :owner_id
  json.url assigned_task_url(assigned_task, format: :json)
end
