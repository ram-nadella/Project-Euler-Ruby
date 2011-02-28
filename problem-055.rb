#!/usr/bin/env ruby

# How many Lychrel numbers are there below ten-thousand?

# Reverse the digits in a number and return the new number

def reverse(number)
  digits = number.to_s.split("")
  digits.reverse!
  return digits.to_s.to_i
end

# Check if number is palindrome

def palindrome?(number)
  number_array = number.abs.to_s.split("")
  index = number_array.size-1
  (0..number_array.size/2).each do |index|
    if number_array.at(index) != number_array.at(number_array.size-(index+1))
      return false
    end
  end
  return true
end

# Check number is a Lychrel number

def lychrel_number?(number)
  iterations = 0
  if palindrome?(number + reverse(number))
    return false
  end
  begin
    number = number + reverse(number)
    iterations += 1
    if iterations >50
      return true
    end
  end while(!palindrome?(number + reverse(number)))
  return false
end

lychrel_number_count = 0
(1..9999).each do |number|
  if lychrel_number?(number)
    lychrel_number_count += 1
  end
end

puts "Answer: #{lychrel_number_count}"