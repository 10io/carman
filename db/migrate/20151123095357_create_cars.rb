class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :type, :default => 0
      t.string :brand, :null => false
      t.string :model, :null => false
      t.integer :year, :null => false
      t.integer :engine, :default => 0
      t.integer :horsepower
      t.decimal :mpg
      t.integer :range
      t.boolean :suv, :default => false
      t.integer :head_lamp, :default => 0
      t.boolean :blind_spot_detection, :default => false
      t.integer :traction, :default => 0

      t.timestamps :null => false
    end
  end
end
