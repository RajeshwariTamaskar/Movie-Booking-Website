class User < ActiveRecord::Base
	has_many :search_theatre
	has_many :reviews
	has_many :payments
	has_many :shopping_cart, through: :payment
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
end
