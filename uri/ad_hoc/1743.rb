n = gets.chomp.split.map(&:to_i)
m = gets.chomp.split.map(&:to_i)

valid = true

(0..n.size - 1).each do |index|
  valid = false if n[index] == m[index]
end

message = valid ? 'Y' : 'N'

puts message
