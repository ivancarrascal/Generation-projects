puts "What is the source file?"
source = gets.chombp
IO.read(source)
puts "What is the destination file?"
destination = gets.chombp
IO.write(destination, source)