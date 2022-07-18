largest_string = ''
loop do
  string = gets.chomp

  break if string == '0'

  strings = string.split

  strings.each do |s|
    largest_string = s if s.size >= largest_string.size
  end

  puts strings.map(&:size).join('-')
end

puts ''
puts "The biggest word: #{largest_string}"
