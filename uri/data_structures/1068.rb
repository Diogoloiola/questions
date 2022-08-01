require 'byebug'

def sanatize_string(string)
  new_string = ''

  string.each_char do |caracter|
    new_string += caracter if [')', '('].include?(caracter)
  end
  new_string
end

while string = gets
  string = string.chomp

  counter = 0

  sanatize_string(string).each_char do |letter|
    if [')', '('].include?(letter)
      counter += 1
    else
      if counter >= 1
        counter -= 1
      end
    end
  end
  if counter >= 1
    puts 'incorrect'
  else
    puts 'correct'
  end
end
