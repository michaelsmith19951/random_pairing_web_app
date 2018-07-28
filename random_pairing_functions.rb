def pairing(input) 
	start = input.shuffle
	new_array = []
	if start.length.even? == true
		new_array = start.each_slice(2).to_a
	else
		new_array = start.each_slice(2).to_a
		new_array2 = new_array.last(2)
		# new_array2 = new_array2[0] + new_array2[1]
		new_array = new_array[0..-3]
		new_array.push(new_array2)
	end
	new_array
end
