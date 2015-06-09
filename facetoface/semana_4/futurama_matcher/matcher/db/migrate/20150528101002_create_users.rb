class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.integer :age
    	t.string :food
    	t.string :program
    	t.string :pet
    	t.string :image

      t.timestamps null: false
    end
  end
end
