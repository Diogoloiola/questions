class Type
  attr_accessor :left, :rigth

  def initialize(left, rigth)
    @left = left.to_i
    @rigth = rigth
  end
end

while line = gets.to_i
  values = []
  (1..line).each do
    number, code = gets.split
    values << Type.new(number, code)
  end
  counter = 0
  (0..values.size - 1).each do |i|
    (0..values.size - 1).each do |j|
      unless values[i][:number] == values[j][:number] && values[i][:flag] && values[j][:flag] && ((values[i][:code] <=> values[j][:code]) == 1)
        next
      end

      values[i][:flag] = false
      values[j][:flag] = false
      counter += 1
    end
  end
  puts counter
end
