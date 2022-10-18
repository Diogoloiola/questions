# frozen_string_literal: true

vector = []

10.times do
  value = gets.chomp.to_i

  vector << if value.negative? || value.zero?
              1
            else
              value
            end
end

vector.each_with_index do |number, index|
  puts "X[#{index}] = #{number}"
end
