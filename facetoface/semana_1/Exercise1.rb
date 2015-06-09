def DashInsertII(str)
	str.split(//).each {|c| puts c}
		if str.each_char == oddValue
			puts '-'
		elsif str.each_char == evenValue
			puts '*'
	end

	return num
end

def oddValue
	str.each_char = [1, 3, 5, 7, 9]
end

def evenValue
	str.each_char = [2, 4, 6, 8]
end

puts DashInsertII("4546793") == "45467-9-3"