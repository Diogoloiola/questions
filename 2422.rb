require 'byebug'

def binary_search(values, sum, current_number)
  right = values.size - 1
  left = 0
  mid = 0
  while left <= right
    mid = (left + right) / 2

    return { values: [current_number, values[mid]], flag: true } if values[mid] + current_number == sum

    if values[mid] + current_number < sum
      left = mid + 1
    else
      right = mid - 1
    end
  end
  { values: [], flag: false }
end

line = gets.to_i
values = []

(1..line).each do
  values << gets.to_i
end

sum = gets.to_i

(0..line - 1).each do |i|
  result = binary_search(values, sum, values[i])
  if result[:flag]
    puts result[:values].join ' '
    break
  end
end
