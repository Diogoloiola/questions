while line = gets
  line = line.to_i

  numbers = []
  (1..line).each do
    numbers.push(gets.chomp.to_i)
  end

  numbers.sort!.each do |number|
    puts number.to_s.rjust(4, '0')
  end
end
