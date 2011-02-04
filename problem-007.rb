#!/usr/bin/env ruby

# What is the 10001st prime number

def prime?(number)
  (2..number-1).each do |n|
    if number%n == 0
      return false
    end
  end
  return true
end

number = 2
position = 1
until position == 10001
  number += 1
  if prime?(number)
    position += 1
  end
end

puts "Answer: #{number}"