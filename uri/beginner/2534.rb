while line = gets
  persons, sql = line.chomp.split.map(&:to_i)

  array = []

  (1..persons).each do
    array << gets.chomp.to_i
  end

  array.sort!.reverse!

  (1..sql).each do
    index = gets.chomp.to_i - 1
    puts array[index]
  end
end
