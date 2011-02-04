#!/usr/bin/env ruby

# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

def pythagorean_triplet?(a, b, c)
  if (c**2 == (a**2 + b**2))
    return true
  end
  return false
end

(1..1000).each do |a|
  (a..1000).each do |b|
    c = (1000-a-b)
    if (pythagorean_triplet?(a, b, c))
      puts "Answer: " + (a*b*c).to_s
      break
    end
  end
end