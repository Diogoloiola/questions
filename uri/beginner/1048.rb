require 'byebug'
salary = gets.chomp.to_f

reajust = if salary >= 0 && salary <= 400
            0.15
          elsif salary >= 400.01 && salary <= 800
            0.12
          elsif salary >= 800.01 && salary <= 1200
            0.10
          elsif salary >= 1200.01 && salary <= 2000.00
            0.07
          else
            0.04
          end

new_salary = salary + (reajust * salary)
reajust_value = salary * reajust

puts "Novo salario: #{format('%.2f', new_salary)}"
puts "Reajuste ganho: #{format('%.2f', reajust_value)}"
puts "Em percentual: #{(reajust * 100).to_i} %"
