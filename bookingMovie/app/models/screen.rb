class Screen < ActiveRecord::Base
	has_many :shows
	belongs_to :theatre
	validates :type_of, presence: true
	validates :num_of_seats, presence: true
	validates :theatre_id, presence: true
end
