class AddProductIdToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_products, :product, foreign_key: true
  end
end
