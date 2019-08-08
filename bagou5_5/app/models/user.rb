class User < ApplicationRecord
	has_many :gossips, dependent: :destroy
	has_many :tags, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy

	belongs_to :city, dependent: :destroy

	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
