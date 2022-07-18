# frozen_string_literal: true

require 'byebug'

def add_number_to_matriz(matriz, index, number)
  if matriz[index].nil?
    matriz[index] = [number]
  else
    matriz[index] << number
  end
end

def sum_matriz(matriz)
  sum = 0
  current = 1
  (0..11).each do |i|
    print i
    (current..11).each do |j|
      print " #{j}"
      sum += matriz[j][i]
    end
    puts
    current += 1
  end
  sum
end

option = gets.chomp

matriz = []
index = 0
counter = 0

144.times do
  number = gets.chomp.to_f
  if counter >= 12
    index += 1
    counter = 0
  end
  add_number_to_matriz(matriz, index, number)
  counter += 1
end

sum = sum_matriz(matriz)

if option == 'S'
  puts format('%.1f', sum).to_s
else
  puts format('%.1f', sum / 66).to_s
end
