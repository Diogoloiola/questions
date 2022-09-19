def print_result(number, notes)
  notes.each do |value|
    puts "#{(number / value).to_i} nota(s) de R$ #{format('%.2f', value.to_f)}"

    number %= value
  end
  number
end

number = gets.chomp.to_f

puts 'NOTAS:'

number = print_result(number, [100, 50, 20, 10, 5, 2])
puts 'MOEDAS:'

print_result(number, [1, 0.50, 0.25, 0.10, 0.05, 0.01])
