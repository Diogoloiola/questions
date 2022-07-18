require 'byebug'
def print_formated_string(string)
  size = string.size - 1
  counter = 1
  while size >= 0
    new_string = string[0..size]

    string = new_string
    puts new_string.chars.join(' ').rjust((new_string.size * 2 + counter) - 2, ' ')

    size -= 1
    counter += 1
  end
end

while line = gets
  print_formated_string line.chomp
  puts ''
end
