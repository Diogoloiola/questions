require 'byebug'

def parse_response(string)
  index = 0
  counter_p = 0
  new_string = ''
  while index < string.size
    if counter_p == 1
      new_string += string[index]
      index += 1
      counter_p = 0
    elsif string[index] == 'p'
      counter_p += 1
      index += 1
    elsif string[index] == ' '
      index += 1
      new_string += ' '
    end
  end
  new_string
end

puts parse_response(gets.chomp)
