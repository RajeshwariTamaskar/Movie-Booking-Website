json.array!(@shows) do |show|
  json.extract! show, :id, :start_time, :end_time, :seats_avail, :screen_id, :movie_id, :date_of_show
  json.url show_url(show, format: :json)
end
