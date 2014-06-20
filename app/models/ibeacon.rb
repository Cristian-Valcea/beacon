class Ibeacon < ActiveRecord::Base
  attr_accessible :beacon_id, :user_id, :image1, :logo, :TabButton1, :TabButton2, :TabButton3, :Title1, :Title2, :Title3, :Company, :Description1, :Description2, :Description3

	belongs_to :user

	mount_uploader :image1, Image1Uploader
	mount_uploader :logo, LogoUploader

	validates :user_id, presence: true
	validates :beacon_id, presence: true
	
	validates :TabButton1, length: { maximum: 13 }
	validates :TabButton2, length: { maximum: 13 }
	validates :TabButton3, length: { maximum: 13 }

	validates :Title1, length: { maximum: 40 }
	validates :Title2, length: { maximum: 40 }
	validates :Title3, length: { maximum: 40 }

	validates :Company, length: { maximum: 60 }
	
	
end
