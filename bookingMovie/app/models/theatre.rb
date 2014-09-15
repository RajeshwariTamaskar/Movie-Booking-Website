class Theatre < ActiveRecord::Base
	
	has_many :screens
	has_many :search_theatres
	has_many :theatre_movies
	has_many :movies, through: :theatre_movies
	validates :name, presence: true
	validates :zipcode, presence: true
end
