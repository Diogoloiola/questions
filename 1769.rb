# frozen_string_literal: true
require 'byebug'

def verify_digit(cpf, type)
  total_value = 0
  index = type == 'b1' ? 1 : 9
  cpf[0..cpf.size - 3].each_char do |digit|
    total_value += digit.to_i * index
    type == 'b1' ? index += 1 : index -= 1
  end
  digit = (total_value % 11).to_s
  digit == '10' ? '0' : digit
end

while string = gets
  cpf = string.chomp.to_s.gsub(/[^0-9]/, '')
  b1 = verify_digit(cpf, 'b1')
  b2 = verify_digit(cpf, 'b2')

  if b1 == cpf[cpf.size - 2] && b2 == cpf[cpf.size - 1]
    puts 'CPF valido'
  else
    puts 'CPF invalido'
  end
end
