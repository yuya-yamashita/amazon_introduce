class SiteProduct < ApplicationRecord
	validates :site_id, presence: true
  validates :product_id, presence: true

	belongs_to :site
	belongs_to :product
end
