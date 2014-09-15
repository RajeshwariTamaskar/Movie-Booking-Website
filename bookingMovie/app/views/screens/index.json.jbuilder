json.array!(@screens) do |screen|
  json.extract! screen, :id, :type_of, :num_of_seats, :theatre_id
  json.url screen_url(screen, format: :json)
end
