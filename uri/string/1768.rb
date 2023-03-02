require 'byebug'

def mount_tree(n)
  m = n
  array = []
  while n >= 1
    string = (1..n).map do
      '*'
    end.join.rjust(m, ' ')
    n -= 2
    m -= 1
    array << string
  end
  array.reverse.join("\n")
end

while line = gets
  line = line.to_i

  puts mount_tree(line)
  puts '*'.rjust((line / 2) + 1, ' ')
  puts '***'.rjust((line / 2) + 2, ' ')
  puts ''
end
1