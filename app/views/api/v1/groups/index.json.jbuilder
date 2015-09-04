json.array!(@groups) do |group|
  json.extract! group, :id, :subject, :board, :tasks, :priority
  json.url api_v1_group_url(group, format: :json)
end
