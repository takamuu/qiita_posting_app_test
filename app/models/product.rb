class Product < ApplicationRecord
  has_many :contracts

  validates :product_name, presence: true
  validates :product_price, presence: true
end
