class Site < ApplicationRecord
	validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
	validates :user_id, uniqueness: {name:}

	belongs_to :user
	has_many :site_products
	has_many :products, through: :site_products
	has_many :tags, dependent: :destroy
end
