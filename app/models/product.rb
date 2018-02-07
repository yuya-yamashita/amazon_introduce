class Product < ApplicationRecord
	validates :title, presence: true
  validates :price, presence: true
	validates :image, presence: true
	validates :description, presence: true

	has_many :site_products
	has_many :sites, through: :site_products
	has_many :product_tags
	has_many :tags, through: :product_tags

end
