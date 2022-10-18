s = 1.0
d = 2.0
f = 3.0

while f <= 39
  s += f / d

  d *= 2.0
  f += 2.0
end

puts format('%.2f', s)
