class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :brand
      t.string :model
      t.string :processorBrand
      t.integer :ramSize
      t.float :price

      t.timestamps null: false
    end
  end
end
