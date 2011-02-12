#!/usr/bin/env ruby

# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)

def leap_year?(year)
  if year%100 == 0
    if year%400 == 0
      return true
    end
  elsif year%4 == 0
    return true
  else
    return false
  end
end

(1901..2000).each do |year|
  if leap_year?(year)
    days = 366
  else
    days = 365
  end
  (1..days).each do |day|
    
  end
end