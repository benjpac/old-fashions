class RenameOrderItems < ActiveRecord::Migration[5.1]
  def change
    rename_table :order_items, :order_products
  end
end
