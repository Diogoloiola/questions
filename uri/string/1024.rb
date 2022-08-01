# frozen_string_literal: true

lines = gets.to_i

(1..lines).each do |_i|
  string = gets.chomp
  (0..string.size - 1).each do |j|
    if (string[j] == string[j].downcase || string[j] == string[j].upcase) && !string[j].match(/[a-zA-Z]+/).nil?
      string[j] = (string[j].ord + 3).chr
    end
  end
  string = string.reverse
  medium = string.size / 2
  (medium..string.size - 1).each do |j|
    string[j] = (string[j].ord - 1).chr
  end
  puts string
end
