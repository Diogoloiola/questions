require 'byebug'
animals = {
  c: 0,
  r: 0,
  s: 0
}

index = gets.chomp.to_i

(1..index).each do
  number, option = gets.chomp.split

  animals[option.downcase.to_sym] += number.to_i
end
total = animals[:c] + animals[:r] + animals[:s]
puts "Total: #{total} cobaias"
puts "Total de coelhos: #{animals[:c]}"
puts "Total de ratos: #{animals[:r]}"
puts "Total de sapos: #{animals[:s]}"
puts "Percentual de coelhos: #{format('%.2f', (animals[:c] * 100).to_f / total)} %"
puts "Percentual de ratos: #{format('%.2f', (animals[:r] * 100).to_f / total)} %"
puts "Percentual de sapos: #{format('%.2f', (animals[:s] * 100).to_f / total)} %"
