class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :reward_id
      t.references :product_id, foreign_key: true
      t.string :reward_name
      t.string :reward_content
      t.integer :reward_price
      t.string :order_id

      t.timestamps
    end
  end
end
