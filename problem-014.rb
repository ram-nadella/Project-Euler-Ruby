#!/usr/bin/env ruby

# Which starting number, under one million, produces the longest chain

def next_number(n)
  if n.even?
    return n/2
  else
    return 3*n +1
  end
end

count = 2
max_count = 0
at_number = 2
known = {}

(2..1000000).each do |number|
  start = number
  until known.has_key?(number) || (number = next_number(number)) == 1
    count += 1
  end
  
  if number != 1
    count += known.fetch(number)
  end
  
  known[start] = count
  
  if count > max_count
    max_count = count
    at_number = start
  end
  count = 2
end

puts "Answer: #{at_number}"