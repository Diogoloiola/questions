inital_value, numbers = gets.chomp.split.map(&:to_i)

gets.chomp.split.map(&:to_i).each do |number|
  inital_value += number

  if inital_value > 100
    inital_value = 100
  elsif inital_value.negative?
    inital_value = 0
  end
end

puts inital_value
