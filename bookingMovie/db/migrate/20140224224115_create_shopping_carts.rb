class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.float :price_per_seat
      t.integer :num_of_tickets

      t.timestamps
    end
  end
end
