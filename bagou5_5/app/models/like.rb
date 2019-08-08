class Like < ApplicationRecord
	belongs_to :user, dependent: :destroy
  	belongs_to :gossip, dependent: :destroy
  	belongs_to :comment, dependent: :destroy
end
