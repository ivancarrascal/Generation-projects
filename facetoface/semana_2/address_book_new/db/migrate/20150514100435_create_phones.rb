class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
    	t.integer :contact_id
    	t.integer :phone_number
    	t.string :description

      t.timestamps null: false
    end
  end
end
