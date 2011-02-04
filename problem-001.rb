#!/usr/bin/env ruby

# Add all the natural numbers below one thousand that are multiples of 3 or 5.

sum = 0
(1..999).each do |number|
  if (number%3 == 0) || (number%5 == 0)
    sum += number
  end
end
puts "Answer: " + sum.to_s