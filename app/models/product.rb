class Product < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products

  def self.search(search)
    if search
      where('LOWER(name) LIKE ?', "%#{search.downcase}%")
    else
      all
    end
  end
end
