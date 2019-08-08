class Tag < ApplicationRecord
	has_many :gossip_tags, dependent: :destroy
  	has_many :gossips, through: :gossip_tags, dependent: :destroy

  	belongs_to :user, dependent: :destroy

end
