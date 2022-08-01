# frozen_string_literal: true

require 'byebug'

class HashTable
  attr_accessor :hash_table, :mod

  def initialize(size)
    @hash_table = Array.new size
    @mod = size
  end

  def calculate_mod(number)
    number % @mod
  end

  def fill_table(numbers)
    numbers.each do |number|
      index = calculate_mod(number.to_i)
      if @hash_table[index].nil?
        @hash_table[index] = [number]
      else
        @hash_table[index] << number
      end
    end
  end

  def print_table
    @hash_table.each_with_index do |values, index|
      print "#{index} -> "

      next puts '\\' if values.nil?

      values.each do |value|
        print "#{value} -> "
      end
      puts '\\'
    end
  end
end

counter = 0

while line = gets
  (1..line.to_i).each do |_i|
    mod, _length = gets.strip.split
    numbers = gets.strip.split
    hash_table = HashTable.new mod.to_i
    hash_table.fill_table(numbers)

    if counter > 0
      puts ''
    else
      counter += 1
    end
    hash_table.print_table
  end
end
