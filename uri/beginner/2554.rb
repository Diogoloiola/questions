require 'byebug'
require 'date'

class Event
  attr_accessor :date, :persons

  def initialize(date, persons)
    @date = date
    @persons = persons
  end

  def all_presents?
    @persons.all?(1)
  end
end

while line = gets
  n, d = line.chomp.split.map(&:to_i)
  values = []

  (1..d).each do
    information = gets.chomp
    step = information.index(' ')

    date = information.slice(0, step)
    array = information.slice(step + 1, information.size).split.map(&:to_i)

    values << Event.new(date, array)
  end
  result = values.find(&:all_presents?)

  if result.nil?
    puts 'Pizza antes de FdI'
  else
    puts result.date
  end
end
