class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.belongs_to :theatre	
      t.string :type_of
      t.integer :num_of_seats
      t.integer :theatre_id

      t.timestamps
    end
  end
end
