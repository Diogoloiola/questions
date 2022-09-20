require 'byebug'
def print_result(number, notes, str)
  notes.each do |value|
    number = number.round(2)
    puts "#{(number / value).to_i} #{str} de R$ #{format('%.2f', value.to_f)}"

    number %= value.round(2)
  end
  number
end

number = gets.chomp.to_f

puts 'NOTAS:'

number = print_result(number, [100, 50, 20, 10, 5, 2], 'nota(s)')
puts 'MOEDAS:'

print_result(number.round(2), [1, 0.50, 0.25, 0.10, 0.05, 0.01], 'moeda(s)')
