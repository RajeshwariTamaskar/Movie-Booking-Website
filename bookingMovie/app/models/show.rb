class Show < ActiveRecord::Base
	belongs_to :movie
	belongs_to :screen
	belongs_to :shopping_cart
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :seats_avail, presence: true
	validates :screen_id, presence: true
	validates :movie_id, presence: true
end
