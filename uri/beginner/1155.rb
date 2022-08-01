require 'byebug'
s = 0

(1..100).each do |i|
  c = 1 / i
  s += c
end
puts format('%.2f', s).to_s
