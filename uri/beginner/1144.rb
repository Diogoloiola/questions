line = gets.chomp.to_i

(1..line).each do |i|
  puts "#{i} #{i * i} #{i * i * i}"
  puts "#{i} #{(i * i) + 1} #{(i * i * i) + 1}"
end
