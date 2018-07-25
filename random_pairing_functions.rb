# Function that sets a variable equal to all 5 names, which are in an array
def shuffled_names(people)
	# people = ["Tom", "Dick", "Harry", "Jenny", "Sally"]
shuffled_arr = []
shuffled_arr = people.shuffle
p shuffled_arr
first = []
results = []
i = 0

until first.count == 3
	p" #{first.length} first array length"
	p" #{shuffled_arr.length} shuffled array length"
	p first
	first << shuffled_arr.pop
	i += 1
	end

	results << first
	p" shuffled_arr #{shuffled_arr}"
	results << shuffled_arr
	p results
	results
end
