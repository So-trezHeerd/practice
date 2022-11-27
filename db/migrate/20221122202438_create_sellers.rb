class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :seller_id
      t.references :user, foreign_key: true
      t.integer :registration_num
      t.string :company_name
      t.string :ceo_name
      t.string :company_address
      t.string :ceo_email
      t.integer :ceo_num

      t.timestamps
    end
  end
end
