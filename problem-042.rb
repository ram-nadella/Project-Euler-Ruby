#!/usr/bin/env ruby

# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file 
# containing nearly two-thousand common English words, how many are 
# triangle words?


def alpha_score(word, alpha_values)
  score = 0
  word.split("").each do |alphabet|
    score += alpha_values[alphabet]
  end
  return score
end

def triangle_number?(number)
  root1 = (-1+Math.sqrt(1+(8*number)))/2
  root2 = (-1-Math.sqrt(1+(8*number)))/2
  root = 0
  if root1 > root2
    root = root1
  else
    root = root2
  end
  if (root-root.to_i) == 0
    return true
  else
    return false
  end
end

=begin

Read the file, store contents in a string, split the string 
and extract the words into an array and compute the scores for
each word and go over each score to see if it's a triange number

=end

words_file_contents = ""
File.open('data/words.txt').each do |line|
  words_file_contents << line
end

words = words_file_contents.split(",").map do |word|
  word.sub("\"", "").sub("\"", "")
end

# generate the alphabetical values hash
alpha_values = {}
value = 1
('A'..'Z').each do |alphabet|
  alpha_values[alphabet] = value
  value += 1
end

word_scores = words.map do |word|
  alpha_score(word, alpha_values)
end

triangle_number_count = 0

word_scores.each do |score|
  if triangle_number?(score)
    triangle_number_count += 1
  end
end

puts "Answer: #{triangle_number_count}"