class SiteProduct < ApplicationRecord
	validates :site_id, presence: true
  validates :product_id, presence: true
	validates :site_id, uniqueness: {product_id:}

	belongs_to :site
	belongs_to :product
end
