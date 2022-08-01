require 'byebug'
line = gets.to_i

numbers = {
  '1': 2,
  '2': 5,
  '3': 5,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 3,
  '8': 7,
  '9': 6,
  '0': 6
}

(1..line).each do
  number = gets
  count = 0
  number.strip.each_char { |n| count += numbers[n.to_sym] }

  puts "#{count} leds"
end
