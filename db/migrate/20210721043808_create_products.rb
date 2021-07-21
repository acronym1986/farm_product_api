class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :growth_time
      t.references :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
