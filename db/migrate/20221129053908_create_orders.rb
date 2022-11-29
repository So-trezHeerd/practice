class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.references :user, foreign_key: true
      t.references :product_id, foreign_key: true
      t.integer :price
      t.integer :quantity
      t.integer :delivery_fee
      t.integer :total_price

      t.timestamps
    end
  end
end
