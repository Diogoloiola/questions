line = gets.chomp.to_i

values = []

(1..line).each do
  values << gets.chomp
end

puts "Falta(m) #{151 - values.uniq.size} pomekon(s)." 
