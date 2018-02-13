class Site < ApplicationRecord
	validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true

	belongs_to :user
	has_many :tags, dependent: :destroy
	has_many :products, dependent: :destroy
end
