class CreateFarms < ActiveRecord::Migration[6.1]
  def change
    create_table :farms do |t|
      t.string :farm_location
      t.decimal :plant_quantity
      t.datetime :plant_date
      t.decimal :pick_quantity
      t.datetime :pick_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
