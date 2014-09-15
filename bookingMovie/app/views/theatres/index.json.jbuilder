json.array!(@theatres) do |theatre|
  json.extract! theatre, :id, :name, :city, :state, :zipcode
  json.url theatre_url(theatre, format: :json)
end
