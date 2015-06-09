def NumberEncoding(str)
	
	array_num = str.split("")
	cute_string = ""
	cute_string.concat(array_num.first)
	
	for i in 0..str.length
		current_element = array_num[i]
		if is_not_in_alphabet? current_element
			current_element.to_i.to_s
		elsif is_in_alphabet? current_element
			current_element.ord(str)
		end
	end
	return str
end

def is_not_in_alphabet?(current_element)
	current_element.to_i.to_s
end

def is_in_alphabet?(current_element)
	current_element.ord(str)
end

prueba = NumberEncoding("hello 45")
puts NumberEncoding("jaj-a")  == "10110-1"
puts NumberEncoding("l3l0") == "123120"
