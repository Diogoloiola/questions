def factorial(number)
  (1..number).inject(:*) || 1
end

while line = gets
  n1, n2 = line.chomp.strip.split

  puts factorial(n1.to_i) + factorial(n2.to_i)
end
