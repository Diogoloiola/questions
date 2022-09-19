loop do
  password = gets.chomp.to_i

  break if password == 2002

  puts 'Senha Invalida'
end

puts 'Acesso Permitido'
