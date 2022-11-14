n = gets.chomp.to_i

count = 0

(1..1000).each do |i|
  puts "N[#{i - 1}] = #{count}"

  if count == n - 1
    count = 0
  else
    count += 1
  end
end
