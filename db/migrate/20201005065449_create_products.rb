class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_price
      t.string :product_image_id
      t.integer :product_status
      t.text :product_comment
      t.integer :category_id

      t.timestamps
    end
  end
end
