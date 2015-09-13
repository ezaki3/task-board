json.array!(@tasks) do |task|
  json.extract! task, :id, :subject, :body, :priority
  json.url api_v1_task_url(task, format: :json)
end
