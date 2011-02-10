#!/usr/bin/env ruby

# What is the millionth lexicographic permutation of the 
# digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?


digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
permutations = digits.permutation.to_a
puts "Answer: #{permutations.fetch(1000000-1).to_s}" 