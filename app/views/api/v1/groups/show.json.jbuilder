json.partial! @group
json.tasks do
  json.array! @group.tasks do |task|
    json.partial! task
  end
end
