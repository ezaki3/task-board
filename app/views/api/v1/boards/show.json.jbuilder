json.partial! @board
json.groups do
  json.array! @board.groups do |group|
    json.partial! group
    json.user do
      json.partial! group.user if group.user
    end
    json.tasks do
      json.array! group.tasks do |task|
        json.partial! task
        json.user do
          json.partial! task.user if task.user
        end
      end
    end
  end
end
json.user do
  json.partial! @board.user if @board.user
end
