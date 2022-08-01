require 'byebug'
class Food
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value.to_i
  end
end

while line = gets
  elements = []
  (1..line.to_i).each do
    name, value = gets.chomp.split
    elements << Food.new(name, value)
  end

  puts elements.sort_by(&:value).map(&:name).join(' ')
end
