class CreateFundingProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :funding_products do |t|
      t.string :product_id
      t.references :seller_id
      t.string :category_id
      t.string :title
      t.string :deadline
      t.integer :achieve_rate
      t.integer :achieve_money
      t.integer :supporters_number
      t.string :brand
      t.string :product_detail

      t.timestamps
    end
  end
end
