json.partial! @group
json.board do
  json.partial! @group.board
end
json.user do
  json.partial! @group.user if @group.user
end
json.tasks do
  json.array! @group.tasks do |task|
    json.partial! task
    json.user do
      json.partial! task.user if task.user
    end
  end
end
