require 'byebug'
line = gets.chomp.to_i

stack = []

(1..line).each do
  option, number = gets.chomp.split
  case option
  when 'PUSH'
    stack << number.to_i
  when 'POP'
    if stack.size.zero?
      puts 'EMPTY'
    else
      stack.pop
    end
  when 'MIN'
    if stack.size.zero?
      puts 'EMPTY'
    else
      puts stack.min
    end
  end
end
