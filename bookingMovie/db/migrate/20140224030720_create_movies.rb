class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :language
      t.string :genre
      t.float :imbd_rating
      t.float :review_rating

      t.timestamps
    end
  end
end
