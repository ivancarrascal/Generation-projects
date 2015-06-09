class User < ActiveRecord::Base
	validates :name, presence: true
	validates :age, presence: true
	validates :age, numericality: true
	validates :pet, presence: true
	validates :food, presence: true
	validates :program, presence: true
	def match_user
		@users = User.where("(program == ?) || (food == ?) AND name != ?", self.program, self.food, self.name)
	end
end
