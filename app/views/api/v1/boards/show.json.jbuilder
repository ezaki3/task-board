json.partial! @board
json.groups do
  json.array! @board.groups do |group|
    json.partial! group
  end
end
