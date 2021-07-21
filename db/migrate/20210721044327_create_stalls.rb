class CreateStalls < ActiveRecord::Migration[6.1]
  def change
    create_table :stalls do |t|
      t.string :stall_location
      t.date :store_date
      t.float :duration
      t.decimal :cost
      t.integer :table
      t.integer :gazebo
      t.integer :vechicle

      t.timestamps
    end
  end
end
