class Movie < ActiveRecord::Base
	has_many :shows
	has_many :reviews
	has_many :theatre_movies
	has_many :theatres, through: :theatre_movies
	validates :name, presence: true
	validates :language, presence: true
	validates :genre, presence: true
end
