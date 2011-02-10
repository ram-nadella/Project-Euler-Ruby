#! /usr/bin/env ruby

# Evaluate the sum of all the amicable numbers under 10000

def amicable_pair?(a, b)
  if a == b
    return false
  elsif (sum_of_perfect_divisors(a) == b) && (sum_of_perfect_divisors(b) == a)
    return true
  else
    return false
  end
end

def sum_of_perfect_divisors(number)
  sum = 0
  (2..Math.sqrt(number)).each do |n|
    if number%n == 0
      sum += n
      sum += number/n
    end
  end
  sum += 1
  # correction for perfect squares
  if Math.sqrt(number).integer?
    sum -= Math.sqrt(number)
  end
  return sum  
end

sum = 0
amicable_numbers = []

(1..10000).each do |number|
  if !amicable_numbers.include?(number)
    possible_partner = sum_of_perfect_divisors(number)
    if (possible_partner < 10000) && 
      (number == sum_of_perfect_divisors(possible_partner)) &&
      (number != possible_partner)
          sum += number+possible_partner
          amicable_numbers << number << possible_partner
    end
  end
end

puts "Answer: #{sum}"