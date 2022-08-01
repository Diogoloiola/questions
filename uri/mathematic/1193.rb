# frozen_string_literal: true

require 'byebug'
line = gets.chomp.to_i

(0..line - 1).each do |index|
  number, option = gets.split

  puts "Case #{index + 1}:"

  case option
  when 'bin'
    puts "#{number.to_i(2)} dec"
    puts "#{'%02x' % number.to_i(2)} hex"
  when 'dec'
    puts "#{number.to_i.to_s 16} hex"
    puts "#{number.to_i.to_s 2} bin"
  else
    puts "#{number.hex} dec"
    puts "#{number.hex.to_s(2)} bin"
  end
  puts
end
