json.array!(@shopping_carts) do |shopping_cart|
  json.extract! shopping_cart, :id, :price_per_seat, :num_of_tickets
  json.url shopping_cart_url(shopping_cart, format: :json)
end
