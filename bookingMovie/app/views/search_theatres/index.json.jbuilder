json.array!(@search_theatres) do |search_theatre|
  json.extract! search_theatre, :id, :theatre_id, :user_id
  json.url search_theatre_url(search_theatre, format: :json)
end
