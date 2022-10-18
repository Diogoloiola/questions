def prime?(number)
  return false if [1, 0].include?(number)

  (2..Math.sqrt(number)).each do |n|
    return false if (number % n).zero?
  end
  true
end

line = gets.chomp.to_i

(1..line).each do
  number = gets.chomp.to_i

  message = prime?(number) ? "#{number} eh primo" : "#{number} nao eh primo"

  puts message
end
