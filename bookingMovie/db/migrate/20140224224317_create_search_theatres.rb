class CreateSearchTheatres < ActiveRecord::Migration
  def change
    create_table :search_theatres do |t|
      t.belongs_to :theatres
      t.belongs_to :users	
      t.integer :theatre_id
      t.integer :user_id

      t.timestamps
    end
  end
end
