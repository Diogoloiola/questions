require 'byebug'
n = gets.chomp
words = gets.chomp.split

count = 0

words.each do |word|
  count += 1 if word.include? n
end

puts format('%.1f', (count * 100.0) / words.size)
