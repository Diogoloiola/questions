def generate_numbers(n)
  values = []
  values << 0
  values if n.zero?

  (0..n).each do |index|
    (0..index - 1).each do
      values << index
    end
  end
  values
end

counter = 0

while line = gets
  line = line.to_i
  result = generate_numbers line

  plural_number = result.size == 1 ? 'numero' : 'numeros'

  puts "Caso #{counter += 1}: #{result.size} #{plural_number}"
  puts result.join ' '
  puts
end
