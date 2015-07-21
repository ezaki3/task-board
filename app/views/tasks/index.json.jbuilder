json.array!(@tasks) do |task|
  json.extract! task, :id, :subject, :body, :group
  json.url task_url(task, format: :json)
end
