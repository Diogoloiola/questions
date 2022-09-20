# frozen_string_literal: true

require 'math'
a, b, c = gets.chomp.split.map(&:to_f)

if a.zero? || (b * b - 4 * a * c).negative?
  puts 'Impossivel calcular'
else
  x2 = ((b * -1) - Math.sqrt((b**2) - (4 * a * c))) / (a * 2)
  x1 = ((b * -1) + Math.sqrt((b**2) - (4 * a * c))) / (a * 2)
  puts "R1 = #{x1.round(5)}"
  puts "R2 = #{x2.round(5)}"
end
