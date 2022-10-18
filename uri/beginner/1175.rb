require 'byebug'
vector = []

20.times do
  vector << gets.chomp.to_i
end

begin_range = 0
end_range = vector.size

loop do
  break if begin_range == 10

  n1 = vector[begin_range]
  n2 = vector[end_range]

  vector[begin_range] = n2
  vector[end_range] = n1

  begin_range += 1
  end_range -= 1
end

vector.compact.each_with_index do |number, index|
  puts "N[#{index}] = #{number}"
end
