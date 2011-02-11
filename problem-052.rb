#!/usr/bin/env ruby

# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
# contain the same digits


def same_digits?(number)
  numbers = []
  (1..6).each do |n|
    numbers << number*n
  end
  numbers.map! {|x| x.to_s.split("").sort}
  numbers.uniq!
  if numbers.size == 1
    return true
  else
    return false
  end
end

number = 1
until same_digits?(number)
  number += 1
end

puts "Answer: #{number}"