#!/usr/bin/env ruby

# Considering natural numbers of the form, ab, where a, b  100, 
# what is the maximum digital sum?

# Compute the  sum of the digits in a number

def sum_of_digits(number)
  digits = number.to_s.split("")
  sum = 0
  digits.each do |digit|
    sum += digit.to_i
  end
  return sum
end

###

max_sum = 0

(1..99).each do |a|
  (1..99).each do |b|
    sum = sum_of_digits(a**b)
    if (sum > max_sum)
      max_sum = sum
    end
  end
end

puts "Answer: #{max_sum}"