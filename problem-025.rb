#!/usr/bin/env ruby

# What is the first term in the Fibonacci sequence to contain 1000 digits


n1 = 1
n2 = 1
i = 2
begin
  next_number = n1 + n2
  i += 1
  n1 = n2
  n2 = next_number
end while next_number.to_s.size < 1000

puts "Answer: #{i}"