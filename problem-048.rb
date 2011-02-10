#!/usr/bin/env ruby

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000

sum = 0

(1..1000).each do |n|
  sum += n**n
end

sum_str = sum.to_s
puts "Answer: #{sum_str[sum_str.size-10..sum_str.size-1]}" 