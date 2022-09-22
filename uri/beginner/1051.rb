salary = gets.chomp.to_f

if salary >= 0 && salary <= 2000.00
  puts 'Isento'
elsif salary >= 2000.01 && salary <= 3000.00
  puts "R$ #{format('%.2f', (salary - 2000) * 0.08)}"
elsif salary >= 3000.01 && salary <= 4500.00
  puts "R$ #{format('%.2f', ((salary - 3000) * 0.18) + 80)}"
else
  puts "R$ #{format('%.2f', ((salary - 4500) * 0.28) + 350)}"
end
