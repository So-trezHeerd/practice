class FundingProduct < ApplicationRecord
	require 'carrierwave/orm/activerecord'
	has_many :sellers
	mount_uploader :avatar, AvatarUploader
	has_many :user_likes
	has_many :rewards
	
	
end
