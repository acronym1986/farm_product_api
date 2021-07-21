class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :bunch
      t.decimal :kg
      t.decimal :product_price
      t.references :product, null: false, foreign_key: true
      t.references :stall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
