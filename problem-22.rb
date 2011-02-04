#!/usr/bin/env ruby

# What is the total of all the name scores in the file? (data/names.txt)

# read file, extract names, put them in an array and sort

def alpha_score_for_name(name, alpha_values)
  score = 0
  name.split("").each do |alphabet|
    score += alpha_values[alphabet]
  end
  return score
end

names = []
names_string = ""
File.open("data/names.txt").each do |line|
 names_string = line
end
names_string.split(",").each do |name|
  names << name.sub("\"", "").sub("\"", "")
end
names.sort!

# generate the alphabetical values hash

alpha_values = {}
value = 1
('A'..'Z').each do |alphabet|
  alpha_values[alphabet] = value
  value += 1
end

sum_of_scores = 0
position = 1
names.each do |name|
  sum_of_scores += position * alpha_score_for_name(name, alpha_values)
  position += 1
end

puts "Answer: #{sum_of_scores}"