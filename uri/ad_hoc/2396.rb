require 'byebug'

class Result
  attr_accessor :value, :index

  def initialize(value, index)
    @value = value
    @index = index
  end
end

n, m = gets.chomp.split.map(&:to_i)

result = []

(1..n).each do |index|

  value = gets.chomp.split.map(&:to_i).sum

  result << Result.new(value, index)
end

result.sort_by!(&:value)

puts result[0].index
puts result[1].index
puts result[2].index
