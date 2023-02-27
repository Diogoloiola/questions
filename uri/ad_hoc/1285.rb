while line = gets
  n, m = line.chomp.split

  count = 0
  (n..m).each do |number|
    array = number.split('')

    count += 1 if array.size == array.uniq.size
  end

  puts count
end
