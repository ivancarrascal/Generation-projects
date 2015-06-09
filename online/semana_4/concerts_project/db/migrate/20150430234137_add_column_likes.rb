class AddColumnLikes < ActiveRecord::Migration
  def change
  	add_column :concerts, :totalLikes, :integer, :default => 0
  end
end