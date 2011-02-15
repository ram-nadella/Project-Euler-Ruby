#!/usr/bin/env ruby

# Find the next triangle number that is also pentagonal and hexagonal.


# Check if a number is a triangle number and return the value of n
# for that number. Triangle number  = n*(n+1)/2

def triangle_number?(number)
  root = (-1+Math.sqrt(1+(8*number)))/2
  if (root-root.to_i) == 0
    return true
  else
    return false
  end
end

# Check if a number is pentagonal
# Pentagonal number = n*(3*n-1)/2

def pentagonal_number?(number)
  root = (1+Math.sqrt(1+(24*number)))/6
  if (root-root.to_i) == 0
    return true
  else
    return false
  end
end

# Check if a number is hexagonal
# Hexagonal number = n*(2*n-1)

def hexagonal_number?(number)
  root = (1+Math.sqrt(1+(8*number)))/4
  if (root-root.to_i) == 0
    return true
  else
    return false
  end
end

###

=begin
We know that 40755 is triangle, pentagonal and hexagonal
Find the n for the hexagonal formula for 40755 and compute hexagonal numbers
for increments of n and find the next one that is also a triangle number and
pentagonal
=end


n = (1+Math.sqrt(1+(8*40755)))/4
begin
  n += 1
  number = n*(2*n-1)
end while(!(triangle_number?(number) && pentagonal_number?(number)))

puts "Answer: #{number.to_i}"