json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :language, :genre, :imbd_rating, :review_rating
  json.url movie_url(movie, format: :json)
end
