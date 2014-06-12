class Ibeacon < ActiveRecord::Base
  attr_accessible :beacon_id, :user_id

	belongs_to :user

	validates :user_id, presence: true
	validates :beacon_id, presence: true
end
