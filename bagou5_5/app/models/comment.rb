class Comment < ApplicationRecord
	has_many :likes, dependent: :destroy

 	belongs_to :user, dependent: :destroy
  	belongs_to :gossip, dependent: :destroy
end
