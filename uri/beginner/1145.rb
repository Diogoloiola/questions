columns, number = gets.split.map(&:to_i)
counter = 0
(1..number).each do |i|
  counter += 1

  if counter == columns
    puts i
    counter = 0
  else
    print "#{i} "
  end
end
