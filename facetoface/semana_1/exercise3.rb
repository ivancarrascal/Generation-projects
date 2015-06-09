def self.escape_characters_in_string(str)
    pattern = /(\'|\,|\.|\*|\/|\-|\ |\\)/
    str.gsub(pattern)
end

def PalindromeTwo(str)

  str.each_char do |x|

  	for i in 0..str.length && str.reverse_each
  		if str.each_char === str.reverse_each
  			puts str
  		end
	end
  return str
end

puts PalindromeTwo("A war at Tarawa!")  == true