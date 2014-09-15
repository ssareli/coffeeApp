json.array!(@task_lists) do |task_list|
  json.extract! task_list, :id, :name, :project_id, :task_id, :owner_id
  json.url task_list_url(task_list, format: :json)
end
