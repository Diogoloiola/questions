require 'byebug'

class Result 
  attr_accessor :value, :counter

  def initialize(value, counter)
    @value = value
    @counter = counter
  end
end

def bubble_sort(array)
  size = array.size - 1
  (0..size).each do |i|
    ((i + 1)..size).each do |j|
      if array[i].counter == array[j].counter && array[i].value < array[j].value
        aux = array[i]
        array[i] = array[j]
        array[j] = aux
      end
    end
  end
end

counter = 0

while line = gets
  n = line.chomp

  result = {}

  n.split('').each do |number|
    if result[number.to_sym].nil?
      result[number.to_sym] = 1
    else
      result[number.to_sym] += 1
    end
  end

  results = result.map do |value|
    Result.new(value.first.to_s.ord, value.last)
  end

  results.sort_by!(&:counter)
  bubble_sort(results)

  if counter.positive?
    puts ''
  else
    counter += 1
  end

  results.each do |number|
    puts "#{number.value} #{number.counter}"
  end
end
