json.partial! @task
json.group do
  json.partial! @task.group
end
json.user do
  json.partial! @task.user if @task.user
end
