class Tag < ApplicationRecord
	validates :name, presence: true
  validates :site_id, presence: true
	validates :site_id, uniqueness: {name:}

	belongs_to :site
	has_many :product_tags
	has_many :products, through: :product_tags
end
