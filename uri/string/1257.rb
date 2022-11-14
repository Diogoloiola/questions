alphabet = ('A'..'Z').to_a
m = gets.chomp.to_i

(0..m - 1).each do
  n = gets.chomp.to_i
  sum = 0
  (0..n - 1).each_with_index do |_, index|
    string = gets.chomp.to_s
    string.each_char.with_index do |element, j|
      sum += alphabet.index(element) + index + j
    end
  end
  puts sum
end
