#!/usr/bin/env ruby

# How many, not necessarily distinct, values of  nCr, for 1  n  100, 
# are greater than one-million?

# Compute the factorial of a number

def factorial(number)
  product = 1
  (1..number).each do |n|
    product *= n
  end
  return product
end

# Compute nCr = n!/(r!(n-r)!)

def ncr(n, r)
  return factorial(n)/(factorial(r)*factorial(n-r))
end

###

ncr_values_over_million = []

(1..100).each do |n|
  (1..n).each do |r|
    ncr_value = ncr(n, r)
    if ncr_value > 1000000
      ncr_values_over_million << ncr_value
    end
  end
end

puts "Answer: #{ncr_values_over_million.size}"