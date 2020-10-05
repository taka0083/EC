class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :receiver
      t.integer :payment
      t.integer :total_price
      t.integer :postage

      t.timestamps
    end
  end
end
