require 'byebug'

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

  max = result.values.max

  values = result.filter_map { |value| { chave: value.first, value: value.last } if value.last == max }

  max_key = values.map { |value| value[:chave] }.max

  puts values.find { |value| value[:chave] == max_key }[:chave]
end
