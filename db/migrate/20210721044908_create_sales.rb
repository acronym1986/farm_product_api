class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.decimal :sold_quantity
      t.float :leftover_quantity
      t.decimal :week_sale
      t.decimal :annual_sale
      t.references :product, null: false, foreign_key: true
      t.references :stall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
