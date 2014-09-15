json.array!(@theatre_movies) do |theatre_movie|
  json.extract! theatre_movie, :id, :theatre_id, :movie_id
  json.url theatre_movie_url(theatre_movie, format: :json)
end
