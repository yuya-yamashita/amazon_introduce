class Tag < ApplicationRecord
	validates :name, presence: true
  validates :site_id, presence: true

	belongs_to :site
	has_many :product_tags, foreign_key: 'tag_id'
	has_many :products, through: :product_tags
end
