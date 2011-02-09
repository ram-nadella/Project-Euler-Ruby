#!/usr/bin/env ruby

# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers

def abundant_number?(number)
  sum = 0
  (1..number).each do |n|
    if number%n == 0
      sum += n
      sum += number/n
    end
  end
  if sum > number
    return true
  else
    return false
  end
end

abundant_numbers = []

(1..28123).each do |number|
  if abundant_number?(number)
    abundant_numbers << number
  end
end

abundant_sums = []

(0..abundant_numbers.size-1).each do |i|
  (i..abundant_numbers.size-1).each do |j|
    abundant_sums << abundant_numbers[i] + abundant_numbers[j]
  end
end

numbers = []
(1..28123).each {|x| numbers << x}
numbers = numbers - abundant_sums
sum = 0
numbers.each do |number|
  sum += number
end

puts "Answer: #{sum}"