class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :number
      t.integer :product_price
      t.integer :making_status

      t.timestamps
    end
  end
end
