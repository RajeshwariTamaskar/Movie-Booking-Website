class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :shopping_carts
      t.string :credit_card_num
      t.integer :cvv
      t.datetime :expiry_date
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :amount_paid
      t.integer :item_id
      t.integer :user_id

      t.timestamps
    end
  end
end
