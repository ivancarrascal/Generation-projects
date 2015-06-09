def fizz_buzz start, finish, rules
	(start..finish).each do |number|
		result = use_rule number, rules

		if result.empty?
			puts number
		else
			puts result
		end
	end
end

def use_rule number, rules
	result = ""
	rules.each do |key, value|
		if are_divisible? number, key 
			result << value 
		end
	end
	
	result
end

def are_divisible? number_a, number_b
	number_a % number_b == 0
end

fizz_buzz 1, 30, {3 => 'Fizz', 5 => 'Buzz', 7 => 'Woof'}






# añadir named params linea 1
# cambiar if por unless