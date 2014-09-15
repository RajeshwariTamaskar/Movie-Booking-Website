class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zipcode
      t.timestamps
    end
    
  end
end
