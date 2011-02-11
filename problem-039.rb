#!/usr/bin/env ruby

# For which value of p<=1000, is the number of solutions maximised?

max_at_sum = 0
max_count = 0

(3..1000).each do |sum|
  count = 0
  (1..sum/2-1).each do |c|
    (1..c-1).each do |a|
      b = Math.sqrt(c**2 - a**2)
      if (a+b+c) == sum
        count += 1
      end
    end
  end
  if count > max_count
    max_count = count
    max_at_sum = sum
  end
end

puts "Answer: #{max_at_sum}"