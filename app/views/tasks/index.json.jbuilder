json.array!(@tasks) do |task|
  json.extract! task, :id, :task_list_id, :comments_id, :priority, :title, :owner_id, :due, :due_repeat, :reminder, :notes, :status, :location, :duration, :type, :timeframe, :category
  json.url task_url(task, format: :json)
end
