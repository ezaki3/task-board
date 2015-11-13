json.partial! @task
json.group do
  json.partial! @task.group
end
json.members do
  json.array! @task.users do |user|
    json.partial! user
  end
end
