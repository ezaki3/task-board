json.partial! @board
json.groups do
  json.array! @board.groups do |group|
    json.partial! group
    json.members do
      json.array! group.users do |user|
        json.partial! user if user
      end
    end
    json.tasks do
      json.array! group.tasks do |task|
        json.partial! task
        json.members do
          json.array! task.users do |user|
            json.partial! user if user
          end
        end
      end
    end
  end
end
json.members do
  json.array! @board.users do |user|
    json.partial! user if user
  end
end
