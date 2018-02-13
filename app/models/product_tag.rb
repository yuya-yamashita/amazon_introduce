class ProductTag < ApplicationRecord
	validates :product_id, presence: true
  validates :tag_id, presence: true
	validates :product_id, uniqueness: {tag_id:}

	belongs_to :product
	belongs_to :tag
end
