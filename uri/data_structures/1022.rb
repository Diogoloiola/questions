def mdc(a, b)
  while b != 0
    resto = a % b
    a = b
    b = resto
  end
  a
end

def calculate(d1, n1, operation, d2, n2)
  case operation
  when '+'
    "#{n1 * d2 + n2 * d1} / #{d1 * d2}"
  when '-'
    "#{n1 * d2 - n2 * d1} / #{d1 * d2}"
  when '*'
    "#{n1 * n2} / #{d1 * d2}"
  when '/'
    "#{n1 * d2} / #{n2 * d1}"
  end
end

line = gets.to_i

(1..line).each do
  n1, d1, operation, n2, d2 = gets.chomp.split.delete_if.with_index { |e, index| e == '/' && index != 3 }

  resul = calculate(d1.to_i, n1.to_i, operation, d2.to_i, n2.to_i)

  a, b = resul.split('/').map(&:to_i)
    
  result = mdc(a, b)    

  puts "#{a}/#{b} = #{a/result}/#{b/result}"
end