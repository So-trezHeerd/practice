class AddAvatarToFundingProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :funding_products, :avatar, :string
  end
end
