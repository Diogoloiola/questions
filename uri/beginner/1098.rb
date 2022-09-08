require 'byebug'
i = 0
j = 1
counter = 1
while i <= 2
  k = j
  3.times do
    if [1, 6, 11].include? counter
      if counter != 11
        print "I=#{i.ceil.to_i} J=#{k.ceil.to_i}"
      else
        print "I=#{i.ceil.to_i} J=#{k.floor.to_i}"
      end
    else
      print "I=#{format('%.1f', i)} J=#{format('%.1f', k)}"
    end
    puts
    k += 1
  end
  i += 0.2
  j += 0.2
  counter += 1
end
