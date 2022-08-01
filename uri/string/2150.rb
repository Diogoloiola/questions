# frozen_string_literal: true

require 'byebug'

while line = gets
  word = gets
  counter = 0

  word&.each_char do |caracter|
    line&.each_char do |letter|
      counter += 1 if caracter == letter
    end
  end
  next if (counter - 1).negative?

  puts counter - 1
end
