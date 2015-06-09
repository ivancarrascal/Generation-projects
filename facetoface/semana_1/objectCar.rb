class Car
	@@count = 0
	@@brand = "Mini"
	attr_accessor :noise
	
	def initialize shoegaze
		@noise = shoegaze
		add_count
	end
	def make_noise
		puts @noise
	end
	def self.view_count #Variable de clase, disabled, se mostraría con my_car.view_count
		puts IO.read("cars.txt")
	end
	def return_count
		count = IO.read("cars.txt")
	end
	def self.get_count
		puts "The number of cars is #{@@count}"
	end
	def self.get_brand #Método de clase, disabled, se mostraría con Car.get_brand
		puts "The brand of the cars is #{brand}"
	end
	def add_count
		count_cars = return_count.to_i
		count_cars += 1
		IO.write("cars.txt", count_cars)
	end
end
class Racing_car < Car
	def initialize
		@noise = "BRRROOOOROROROROROMMMMMMMMMMMBROMBROMBROM!"
	end
end

my_car = Car.new 'Brrrrrrroomm'
my_car2 = Car.new 'Shiberet'
my_car3 = Car.new 'Loker'
my_car.make_noise
my_car2.make_noise
my_car2.add_count
Car.view_count
my_racing_car = Racing_car.new
my_racing_car.make_noise

array_cars = [my_car, my_car2, my_car3]
array_cars.each {|item| puts item.make_noise}

sounds = ["EsBrooooomi", "Meeeh", "Nyan-nyan"]
cars = sounds.map do |sound|
	Car.new sound
end

cars.reduce("") do |sum, car|
	sum += car.noise
end