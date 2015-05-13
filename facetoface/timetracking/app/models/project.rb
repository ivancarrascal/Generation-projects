class Project < ActiveRecord::Base
	has_many :entries

	def self.iron_find param
		where(id: param).first
	end

	def self.clean_old
		one_week_ago = Date.current - 7
		p_to_destroy = Project.where("created_at < ?", one_week_ago)
		p_to_destroy.destroy_all
	end

	def self.last_created_projects param
		order(created_at: :desc).limit(param)
	end
end
