require 'byebug'
def calculate_first_number(string)
  counter = 1
  sum = 0
  (0..string.size - 1).each do |index|
    sum += string[index].to_i * counter

    counter += 1
  end
  result = sum % 11

  result == 10 ? 0 : result
end

def calculate_last_number(string)
  counter = 9
  sum = 0
  (0..string.size - 1).each do |index|
    sum += string[index].to_i * counter

    counter -= 1
  end
  result = sum % 11

  result == 10 ? 0 : result 
end

def format_cpf(string)
  new_string = ''

  string.each_char.with_index do |caractere, index|
    if [2, 5].include?(index)
      new_string += caractere
      new_string += '.'
    else
      new_string += caractere
    end
  end
  new_string
end

while line = gets
  line = line.chomp

  puts "#{format_cpf(line)}-#{calculate_first_number(line)}#{calculate_last_number(line)}"
end
