def caesar_cipher(string,number)
	letters = ('a'..'z').to_a
	ciph_hash = {}
	n = 0
	letters.each do |x|
		ciph_hash[x] = n
		n += 1
	end
	array = string.split(//)
	new_string = ""
	array.each do |i|
		if i == i.upcase
			capitalize = true
			i.downcase!
		end
		if letters.include?(i)
			val = ciph_hash[i] + number
			if val > 25
				val -= 26
			end
			if capitalize == true
				new_string += ciph_hash.key(val).upcase
			else
				new_string += ciph_hash.key(val)
			end
		else
			new_string += i
		end
	end
    puts new_string
end

caesar_cipher("What a string!", 5)