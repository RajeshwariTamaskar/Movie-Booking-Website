class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.belongs_to :screens
      t.belongs_to :movies
      t.belongs_to :shopping_carts
      t.datetime :start_time
      t.datetime :end_time
      t.integer :seats_avail
      t.integer :screen_id
      t.integer :movie_id

      t.timestamps
    end
  end
end