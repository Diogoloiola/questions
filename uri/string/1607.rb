require 'byebug'

def parse(initial, final)
  size = initial.size
  counter = 0
  index = 0

  while index <= size
    next index += 1 unless initial[index] != final[index]

    while initial[index] != final[index]
      caracter = initial[index].ord + 1

      caracter = 97 if caracter > 122
      initial[index] = caracter.chr
      counter += 1
    end

    index += 1
  end
  counter
end

line = gets.to_i

(1..line).each do
  inital, final = gets.chomp.split

  puts parse(inital, final)
end
