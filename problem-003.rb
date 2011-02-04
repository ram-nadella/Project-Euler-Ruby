#!/usr/bin/env ruby

# What is the largest prime factor of the number 60085147514


def prime?(number)
  (2..number-1).each do |n|
    if number%n == 0
      return false
    end
  end
  return true
end

def factor?(current_number, number)
  if number%current_number == 0
    return true
  else
    return false
  end
end

def get_first_prime_factor(number)
  (2..number-1).each do |current_number|
    if factor?(current_number, number) && prime?(current_number)
      return current_number
    end
  end
end

number = 600851475143
prime_factors = []
n = number
until prime?(n)
  prime_factor = get_first_prime_factor(n)
  prime_factors << prime_factor
  n = n / prime_factor
end

prime_factors << n

puts "Prime Factors: "
puts prime_factors
puts "Answer: #{(prime_factors.sort).at(prime_factors.length-1)}"
