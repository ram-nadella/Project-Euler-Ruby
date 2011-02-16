#!/usr/bin/env ruby

# Find the sum of the only eleven primes that are both truncatable from 
# left to right and right to left.

# Check if the number is prime

def prime?(number)
  if number<=1
    return false
  end
  (2..Math.sqrt(number)).each do |n|
    if number%n == 0
      return false
    end
  end
  return true
end

# Check if the truncated parts of the number from both sides is still a prime

def truncatable_prime?(number)
  digits = number.to_s.split("")
  (digits.size-1).times {
    digits.shift
    if !prime?(digits.to_s.to_i)
      return false
    end
  }
  digits = number.to_s.split("")
  (digits.size-1).times {
    digits.pop
    if !prime?(digits.to_s.to_i)
      return false
    end
  }
  return true
end

###

t_primes = []
number = 11
begin
  number += 1
  if prime?(number) && truncatable_prime?(number)
    t_primes << number
  end
end while(t_primes.size != 11)

sum = 0

t_primes.each do |t_prime|
  sum += t_prime
end

puts "Answer: #{sum}"
