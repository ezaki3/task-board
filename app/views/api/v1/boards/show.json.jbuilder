json.partial! @board
json.groups do
  json.array! @board.groups do |group|
    json.partial! group
    json.tasks do
      json.array! group.tasks do |task|
        json.partial! task
      end
    end
  end
end
