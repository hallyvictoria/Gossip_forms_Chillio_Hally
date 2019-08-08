class City < ApplicationRecord
	has_many :users, dependent: :destroy
	has_many :gossips, through: :users, dependent: :destroy
end
