json.array!(@shared_projects) do |shared_project|
  json.extract! shared_project, :id, :name, :description
  json.url shared_project_url(shared_project, format: :json)
end
