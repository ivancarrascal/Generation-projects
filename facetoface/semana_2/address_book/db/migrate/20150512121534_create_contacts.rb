class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.text :address
    	t.string :phone_number
    	t.string :email_adress

      t.timestamps null: false
    end
  end
end
