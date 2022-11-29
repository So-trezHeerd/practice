class UserLike < ApplicationRecord
  belongs_to :user
  	has_many :funding_products
end
