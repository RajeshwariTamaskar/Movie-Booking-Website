class CreateTheatreMovies < ActiveRecord::Migration
  def change
    create_table :theatre_movies do |t|
      t.belongs_to :movies
      t.belongs_to :theatres
      t.integer :theatre_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
