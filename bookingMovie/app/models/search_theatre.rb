class SearchTheatre < ActiveRecord::Base
	belongs_to :theatre
	belongs_to :user
	validates :theatre, presence: true
end
