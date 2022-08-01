# frozen_string_literal: true

require 'byebug'
loop do
  n1, n2 = gets.strip.split

  break if n1 == '0' && n2 == '0'

  hash = {}

  gets.strip.split.each do |number|
    if hash[number.to_sym].nil?
      hash[number.to_sym] = 0
    else
      hash[number.to_sym] += 1
    end
  end
  counter = 0
  hash.each { |key| counter += 1 if key[1] >= 1 }
  puts counter
end
