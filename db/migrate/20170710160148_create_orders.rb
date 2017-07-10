class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.belongs_to :account, index: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
