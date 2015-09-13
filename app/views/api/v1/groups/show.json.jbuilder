json.partial! @group
json.board do
  json.partial! @group.board
end
json.tasks do
  json.array! @group.tasks do |task|
    json.partial! task
  end
end
