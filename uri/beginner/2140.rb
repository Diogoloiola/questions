def possible?(value)
  notes = [2, 5, 10, 20, 50, 100]

  notes.each do |i|
    notes.each do |j|
      return true if (i + j) == value
    end
  end
  false
end

loop do
  n1, n2 = gets.chomp.split.map(&:to_i)

  break if n1.zero? && n2.zero?

  result = n2 - n1

  if possible?(result)
    puts 'possible'
  else
    puts 'impossible'
  end
end
