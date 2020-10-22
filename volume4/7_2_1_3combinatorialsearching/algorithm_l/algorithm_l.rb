# General Algorithms - Combinatronics
# Lexicographic Combination Generator
# From Knuth's The Art of Computer Programming
# Author: Carlos L. Cuenca
# Date: 10/20/20

# --------------
# Driver Program

ARGF.each do |line|

	# As an example, we go through each n choose t
	for t in 1..array.length

		combinations = Array.new(t + 2)

		# Clear the combination index array
		for j in 0..t - 1

			combinations[j] = j

		end

		# Assign the Sentinels
		combinations[t] = array.length
		combinations[t + 1] = 0

		j = 0

		while j < t do

			# Visit the combination. In this case we print the indices
			combinationString = ""

			for index in 0..t - 1

				combinationString += combinations[index].to_s + " "

			end

			puts combinationString

			# Find j
			j = 0

			while(combinations[j] + 1 == combinations[j + 1]) do

				combinations[j] = j

				j += 1

			end

			combinations[j] += 1

		end

	end

end
