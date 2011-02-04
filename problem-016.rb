#!/usr/bin/env ruby

# What is the sum of the digits of the number 21000

number = 2**1000
digits = number.to_s.split("").map! {|x| x.to_i}
sum = 0
digits.each do |n|
  sum += n
end
puts "Answer: #{sum}"