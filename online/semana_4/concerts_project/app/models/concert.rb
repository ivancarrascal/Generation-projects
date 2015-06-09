class Concert < ActiveRecord::Base
	validates :bandName, :venue, :city, :date, :price, :description, presence: true
end