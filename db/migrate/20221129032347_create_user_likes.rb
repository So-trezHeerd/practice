class CreateUserLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_likes do |t|
      t.references :user, foreign_key: true
      t.references :product_id, foreign_key: true

      t.timestamps
    end
  end
end
