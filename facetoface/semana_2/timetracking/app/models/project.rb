class Project < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /\A[a-zA-Z0-9\s]+\z/}

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
	def calculate_worked_hours month, year
		all_entries = self.entries
		all_selected_entries = all_entries.select do |entry|
			entry.date.month == month && entry.date.year == year
		end
		all_selected_entries.reduce(0){|sum, entry| sum + entry.hours}
	end
end
