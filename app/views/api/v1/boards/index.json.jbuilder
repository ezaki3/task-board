json.array!(@boards) do |board|
  json.extract! board, :id, :subject, :priority
  json.url api_v1_board_url(board, format: :json)
end
