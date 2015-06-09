class Game

    def initialize character
        @character = character
        @rooms = []
    end

    def add_room room
        @rooms << room
    end

    def show_room id
           room = @rooms.find{|room| id == room.id }
           room.message
    end

    def play

        playing = true

        while playing

            show_room @character.position
            direction = get_direction
            execute_direction direction 
        end
    end

    def start_game
        puts "You are in a dark room. There is a door at the south."
        direction = gets.chombp
        while direction == @paths
            play
        end
    end
end

class Room

    attr_accessor :id_room, :paths, :message

    def initialize id, paths, message
        @id = id
        @paths = paths
        @message = message
    end
end

class Character

    attr_accessor :position

    def initialize position
        @position = position # el numero de habitacion donde se encuentra
    end
end

all_the_rooms = []
room1 = Room.new(1, { :W => 8, :S => 2, :E => 5}, "You are in the room 1. At W, room 8; at S, room 2; and at E, room 5")
room2 = Room.new(2, { :N => 1, :S => 3}, "You are in the room 2")
room3 = Room.new(3, { :N => 2, :S => 4}, "You are in the room 3")
room5 = Room.new(5, { :W => 1, :E => 6}, "You are in the room 5")
room6 = Room.new(6, { :W => 5, :S => 7}, "You are in the room 6")
room7 = Room.new(7, { :N => 6, :S => 8}, "Your are in the room 7")
room8 = Room.new(8, { :E => 1}, "You are in the room 8")
room9 = Room.new(9, { :N => 8, :S => 24, :E => 10}, "You are in the room 9")
room10 = Room.new(10, { :W => 9, :E => 11}, "You are in the room 11")
room11 = Room.new(11, { :W => 10, :N => 12, :S => 14, :E => 22}, "You are in the room 11")
room12 = Room.new(12, { :S => 11, :N => 13, :E => 21}, "You are in the room 12")
room13 = Room.new(13, { :S => 12, :E => 18}, "You are in the room 13")
room14 = Room.new(14, { :N => 11, :E => 15}, "You are in the room 14")
room15 = Room.new(15, { :W => 14, :N => 22, :E => 16}, "You are in the room 15")
room16 = Room.new(16, { :W => 15, :N => 23, :E => 17}, "You are in the room 16")
room17 = Room.new(17, { :W => 16}, "You are in the room 17")
room18 = Room.new(18, { :W => 13, :S => 21, :E => 19}, "You are in the room 18")
room19 = Room.new(19, { :W => 18, :E => 20}, "You are in the room 19")
room20 = Room.new(20, { :W => 19}, "You are in the room 20")
room21 = Room.new(21, { :N => 18, :W => 12, :S => 22}, "You are in the room 21")
room22 = Room.new(22, { :N => 21, :W => 11, :S => 15, :E => 23}, "You are in the room 22")
room23 = Room.new(23, { :W => 22, :S => 16}, "You are in the room 23")
room24 = Room.new(24, { :N => 9}, "You are in the room 24")

player = Character.new 1

game = Game.new character
game.add_room room1
game.add_room room2
game.add_room room3
game.add_room room4
game.add_room room5
game.add_room room6
game.add_room room7
game.add_room room8
game.add_room room9
game.add_room room10
game.add_room room11
game.add_room room12
game.add_room room13
game.add_room room14
game.add_room room15
game.add_room room16
game.add_room room17
game.add_room room18
game.add_room room19
game.add_room room20
game.add_room room21
game.add_room room22
game.add_room room23
game.add_room room24

game.show_room 8
