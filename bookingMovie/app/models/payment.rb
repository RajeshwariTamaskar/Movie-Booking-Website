class Payment < ActiveRecord::Base
	belongs_to :shopping_cart
	has_one :user
	validates :credit_card_num, presence: true
	validates :cvv, presence: true
	validates :expiry_date, presence: true
	validates :expiry_date, presence: true
	validates :street_name, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zipcode, presence: true
end
