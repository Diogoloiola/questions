i = 1
j = 7

while i <= 9
  k = j
  3.times do
    print "I=#{i} J=#{k}"
    puts
    k -= 1
  end
  i += 2
  j += 2
end
