class Order < ApplicationRecord
  has_many :order_products
  has_many :products, through: :order_products
  belongs_to :account, optional:true

  before_save :update_total
  before_create :update_status

  def calculate_total
    self.order_products.collect { |item| item.product.price * item.quantity }.sum
  end

  def calculate_quantity
    total = 0
    self.order_products.each do |product|
      total += product.quantity
    end
    return total
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end

end
