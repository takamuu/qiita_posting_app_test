class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.references :user,           null: false, foreign_key: true
      t.references :product,        null: false, foreign_key: true
      t.string     :product_name,   null: false
      t.integer    :contract_money, null: false, default: 0
      t.integer    :contract_status

      t.timestamps
    end

    add_index :contracts, :product_name
  end
end
