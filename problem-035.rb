#!/usr/bin/env ruby

# How many circular primes are there below one million?


# See if a number is prime

def prime?(number)
  if number <= 1
    return false
  end
  (2..Math.sqrt(number)).each do |n|
    if number%n == 0
      return false
    end
  end
  return true
end

# Get circular rotations of the number, excluding the number

def circular_rotations(number)
  rotations = []
  if number.to_s.size == 1
    return rotations
  end
  digits = number.to_s.split("").map { |x| x.to_i  }
  (number.to_s.size-1).times {
    digits << digits.shift
    rotations << digits.to_s.to_i
  }
  return rotations
end

=begin
Check to see if a number is a circular prime
Function assumes that the number is already a prime and checks to
see if the number's rotations are prime

Returns false when it finds the first non-prime rotation
=end



def circular_prime?(number)
  if number.to_s.size == 1
    return true
  end
  rotations = circular_rotations(number)
  rotations.each do |r|
    if !prime?(r)
      return false
    end
  end
  return true
end

###

count = 0

(1..1000000).each do |number|
  if prime?(number)
    if circular_prime?(number)
      count += 1
    end
  end
end

puts "Answer: #{count}"