require 'byebug'

class Student
  attr_accessor :name, :history

  def initialize(name:, history:)
    @name = name
    @history = history
  end

  def failed?
    absences = @history.count 'A'
    presences = @history.count 'P'

    total = absences + presences

    (presences * 100) / total < 75.0
  end
end

counter = 0

while line = gets
  line = line.to_i

  (1..line).each do
    line_two = gets.chomp.to_i

    names = gets.chomp.split

    presences = gets.chomp.split
    students = (0..line_two - 1).map do |index|
      Student.new(name: names[index], history: presences[index])
    end

    if counter.positive?
      puts ''
    else
      counter += 1
    end

    string = students.select(&:failed?).map(&:name).join(' ')

    puts string if string.size > 1
  end
end
