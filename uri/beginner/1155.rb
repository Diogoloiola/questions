s = 1.0
d = 2.0

while d <= 100
  s += 1.0 / d

  d += 1.0
end

puts s.round(2)
