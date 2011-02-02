#!/usr/bin/env ruby

# What is the value of the first triangle number to have over five hundred divisors

def divisor_count(number)
  count = 0
  (1..Math.sqrt(number)).each do |n|
    if (number%n) == 0
      count += 1
    end
  end
  count *= 2
  if perfect_square?(number)
    count -= 1
  end
  return count
end

def perfect_square?(number)
  number_sqrt = Math.sqrt(number)
  if (number_sqrt - number_sqrt.floor) == 0
    true
  else
    false
  end
end

index = 1
number = 1
prev_number = 0
count = 0
until divisor_count(number) > 500
  index += 1
  number += index
end

puts "Answer: #{number}"