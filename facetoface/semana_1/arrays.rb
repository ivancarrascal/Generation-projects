numbers = [ "One", 2, "Three" ]

numbers.each do |element|
  puts "--> #{element}"
end

my_array = []

my_array << "A"
my_array.push "B"
my_array.push "C"

my_array.delete_at 2

puts my_array