class Car
attr_accesor :model, :color, :engine
def initialize model, color, engine
@model = model
@color = color
@engine = engine
end

def drive
return "Brrrrrmmm!!!"
end
end

puts.app.description
my_car = Car.new "thunder", "blue", "gasoil"
my_car.color 
my_car.model
my_car.engine

my_other_car = Car.new "iron", "grey", "diesel"
my_other_car.color
my_other_car.model
my_other_car.engine

my_car.drive