#!/usr/bin/env ruby

# For which value of p<=1000, is the number of solutions maximised?

max_at_sum = 0
max_count = 0

(3..1000).each do |sum|
  count = 0
  (1..sum-2).each do |a|
    (a..sum-a-1).each do |b|
      c = Math.sqrt(a**2 + b**2)
      if (c-c.to_i) == 0 && (a+b+c) == sum
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

# RT 149sec