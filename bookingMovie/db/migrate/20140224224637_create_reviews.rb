class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :movies
      t.belongs_to :users
      t.float :rating
      t.string :review_des
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
