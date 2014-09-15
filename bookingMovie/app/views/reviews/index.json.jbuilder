json.array!(@reviews) do |review|
  json.extract! review, :id, :rating, :review_des, :user_id, :movie_id
  json.url review_url(review, format: :json)
end
