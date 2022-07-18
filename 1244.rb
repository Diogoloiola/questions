require 'byebug'
class NodeList
  attr_accessor :data, :next_element

  def initialize(data, next_element = nil)
    @data = data
    @next_element = next_element
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def add(data)
    return @head = NodeList.new(data, @head) if @head.nil?

    new_node = NodeList.new(data)

    previous = nil, current = @head

    while current && current.data < new_node.data
      previous = current
      current = current.next_element
    end

    if current == @head
      new_node.next_element = @head
    else
      new_node.next_element = previous.next_element
      previous.next_element = new_node
    end
  end

  def print_list
    node = @head

    print node.data
    node = node.next_element

    while node
      print " #{node.data}"
      node = node.next_element
    end
    puts
  end
end

line = gets.chomp.to_i

(1..line).each do
  linked_list = LinkedList.new
  gets.chomp.split.each do |word|
    linked_list.add(word)
  end
  linked_list.print_list
end
