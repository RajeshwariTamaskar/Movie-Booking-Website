json.array!(@payments) do |payment|
  json.extract! payment, :id, :credit_card_num, :cvv, :expiry_date, :street_name, :city, :state, :zipcode, :amount_paid, :item_id, :user_id
  json.url payment_url(payment, format: :json)
end
