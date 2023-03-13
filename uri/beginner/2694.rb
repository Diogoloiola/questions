line = gets.chomp.to_i

(1..line).each do 
  string = gets.chomp
  n1 = string.slice(2, 2).to_i
  n2 = string.slice(5, 3).to_i
  n3 = string.slice(11, 2).to_i

  puts n1 + n2 + n3
end
