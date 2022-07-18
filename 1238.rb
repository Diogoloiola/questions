require 'byebug'
line = gets.chomp.to_i

(1..line).each do
  str_one, str_two = gets.chomp.split
  j = 0
  if str_one.size > str_two.size
    (0..str_one.size - 1).each do |index|
      next print str_one[index] if j > str_two.size

      print "#{str_one[index]}#{str_two[j]}"
      j += 1
    end
  elsif str_two.size > str_one.size
    (0..str_two.size - 1).each do |index|
      next print str_two[index] if j > str_one.size

      print "#{str_one[index]}#{str_two[j]}"
      j += 1
    end
  else
    (0..str_one.size - 1).each do |index|
      print "#{str_one[index]}#{str_two[index]}"
      j += 1
    end
  end
  puts
end
