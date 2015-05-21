class Book < ActiveRecord::Base

	def self.last_added_books
		order(created_at: :desc)
	end
end
