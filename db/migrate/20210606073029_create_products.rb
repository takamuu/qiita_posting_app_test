class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name, null: false
      t.integer :product_price, null: false, default: 0

      t.timestamps
    end

    add_index :products, :product_name
  end
end
