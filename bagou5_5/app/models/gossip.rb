class Gossip < ApplicationRecord
	has_many :gossip_tags, dependent: :destroy
  	has_many :tags, through: :gossip_tags, dependent: :destroy
  	has_many :comments, dependent: :destroy
  	has_many :likes, dependent: :destroy

  	belongs_to :user, dependent: :destroy

  	validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  	validates :content, presence: true
end
