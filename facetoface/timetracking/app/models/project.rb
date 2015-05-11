class Project < ActiveRecord::Base

	def self.iron_find param
		where(id: param).first
	end

end
