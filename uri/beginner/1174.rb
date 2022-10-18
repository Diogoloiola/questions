vector = []
100.times do
  vector << gets.chomp.to_f
end

vector.each_with_index do |number, index|
  puts "A[#{index}] = #{format('%.1f', number)}" if number <= 10.0
end
