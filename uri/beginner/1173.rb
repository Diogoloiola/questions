number = gets.chomp.to_i

(0..9).each do |i|
  puts "N[#{i}] = #{number}"
  number *= 2
end