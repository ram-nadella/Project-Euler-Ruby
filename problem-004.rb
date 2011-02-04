#!/usr/bin/env ruby

# Find the largest palindrome made from the product of two 3-digit numbers

def is_palindrome?(number)
  number_array = number.abs.to_s.split("")
  index = number_array.size-1
  (0..number_array.size/2).each do |index|
    if number_array.at(index) != number_array.at(number_array.size-(index+1))
      return false
    end
  end
  return true
end

highest_palindrome = 0

(100..999).each do |x|
  (100..999).each do |y|
    xy = x*y
    if is_palindrome?(xy) && xy > highest_palindrome
      highest_palindrome = xy
    end
  end
end

puts "Answer: #{highest_palindrome}"