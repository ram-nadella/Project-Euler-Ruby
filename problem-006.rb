#!/usr/bin/env ruby

# Find the difference between the sum of the squares of the first one hundred natural numbers 
# and the square of the sum

sum_of_squares, sum, square_of_sum = 0, 0, 0
(1..100).each do |n|
  sum += n
  sum_of_squares += n*n
end

square_of_sum = sum*sum

puts "Answer: #{(sum_of_squares-square_of_sum).abs}"