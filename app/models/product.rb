class Product < ApplicationRecord
	validates :title, presence: true
  validates :price, presence: true
	validates :image, presence: true
	validates :description, presence: true
	validates :site_id, presence: true

	belongs_to :site
	has_many :product_tags, foreign_key: 'product_id'
	has_many :tags, through: :product_tags
	accepts_nested_attributes_for :product_tags
end
