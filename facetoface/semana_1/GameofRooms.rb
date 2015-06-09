class Room
@paths = [] #or @n_path, @s_path, @e_path, @w_path
	def initialize
	end
	def main_room
		puts "You are in a dark room. There is a door at the north."
		@direction = gets.chombp
		if direction == "N"
			go_north
		elsif direction == "S"
			go_south
		elsif direction == "E"
			go_east
		elsif direction == "W"
			go_west
		end
	end
	def forest
	end
	def unlocked_room
	end
	def if_answer_is_right
	end
	def if_answer_is_wrong
	def go_north
			puts "You are in a forest. There is a lot of light. A bear is sleeping"
	end
	def go_south
		if "S"
			puts "Darkness. You don't wanna go there."
		end
	end
	def go_east
		if "E"
			puts "There is a wall! You can't go through."
		end
	end
	def go_west
		if "W"
			puts "Door locked. Need a password."
		end
	end
end

class Your_character
@position
@name
	def initialize
	end
	def move
	end
end

class Game
@rooms = []
@character
end
#Mientras (bucle While) la respuesta no sea erronea, que el bucle continua con gets.chombp.
#¿Array con [N, S, E, W]?