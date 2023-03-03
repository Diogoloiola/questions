def fill_matrix(n)
  matriz = []
  index = (n / 2)
  (1..n).each do |i|
    line = []
    (1..n).each do |j|
      line << if i == j
                '1'
              elsif (i + j) == n + 1
                '2'
              else
                '3'
              end
    end
    matriz << line
  end
  matriz[index][index] = '2' if n.odd?
  matriz
end

while line = gets
  line = line.to_i

  result = fill_matrix(line)

  (0..line - 1).each do |i|
    (0..line - 1).each do |j|
      print result[i][j]
    end
    puts ''
  end
end
