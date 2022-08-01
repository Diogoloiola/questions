# frozen_string_literal: true
require 'byebug'

class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @right = nil
    @left = nil
  end
end

class Tree
  attr_accessor :root, :counter

  def initialize
    @root = nil
    @counter = 0
  end

  def insert(value)
    return @root = Node.new(value) if @root.nil?

    current = @root
    previous = nil

    new_node = Node.new(value)
    while current
      previous = current

      return @counter += 1 if new_node.value == current.value

      current = if new_node.value > current.value
                  current.right
                else
                  current.left
                end
    end
    if new_node.value > previous.value
      previous.right = new_node
    else
      previous.left = new_node
    end
  end
end

while line = gets
  line, year = line.split
  tree = Tree.new
  (1..line.to_i).each do
    name = gets.chomp
    code = name.split.map { |s| s[0] }.join.concat(year)
    tree.insert(code)
  end
  puts tree.counter
end
