class Ibeacon < ActiveRecord::Base
  attr_accessible :beacon_id, :user_id, :image1

	belongs_to :user

	mount_uploader :image1, Image1Uploader

	validates :user_id, presence: true
	validates :beacon_id, presence: true
end
