require 'byebug'
class Student
  attr_accessor :name, :problems

  def initialize(name, problems)
    @problems = problems
    @name = name
  end
end

def bubble_sort(array)
  size = array.size - 1
  (0..size).each do |i|
    ((i + 1)..size).each do |j|
      next unless array[i].problems == array[j].problems && (array[i].name <=> array[j].name) == 1

      aux = array[i]
      array[i] = array[j]
      array[j] = aux
    end
  end
end

counter = 1

while line = gets
  line = line.to_i

  students = []

  (1..line).each do
    name, problems = gets.chomp.split

    students << Student.new(name, problems.to_i)
  end
  students.sort_by!(&:problems).reverse!

  bubble_sort(students)
  puts "Instancia #{counter}"
  puts students[students.size - 1].name
  counter += 1
  puts ''
end
