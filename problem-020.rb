#!/usr/bin/env ruby

# Find the sum of the digits in the number 100!

factorial = 1

(1..100).each do |number|
  factorial *= number
end

factorial_digits = factorial.to_s.split("").map! { |x| x.to_i }
sum = 0
factorial_digits.each do |digit|
  sum += digit
end

puts "Answer: #{sum}"