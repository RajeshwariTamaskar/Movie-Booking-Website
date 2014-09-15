class ShoppingCart < ActiveRecord::Base
	has_many :show
	has_one :payment
	has_one :user, through: :payment
end
