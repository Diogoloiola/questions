def validate_signature(name, signature)
  size = name.size - 1
  counter = 0

  (0..size).each do |index|
    puts "#{name[index]} - #{signature[index]}"
    counter += 1 if name[index] != signature[index]
  end
  counter > 1
end

loop do
  line = gets.chomp.to_i

  break if line.zero?

  counter = 0

  dictonary = {}

  (1..line).each do
    name, signature = gets.chomp.split
    dictonary[name.to_sym] = signature
  end

  line = gets.chomp.to_i

  (1..line).each do
    name, signature = gets.chomp.split

    result = validate_signature(dictonary[name.to_sym], signature)

    counter += 1 if result
  end

  puts counter
end
