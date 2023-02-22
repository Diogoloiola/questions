require 'byebug'

def sum(n)
  n * (n + 1) / 2
end

n, m = gets.chomp.split.map(&:to_i)

if n > m
  puts ( sum(n) - sum(m)) + m
else
  puts ( sum(m) - sum(n)) + n
end
