require 'byebug'

def parse_response(string, cipher)
  string.each_char.with_index do |caracter, index|
    key = caracter.to_sym
    string[index] = cipher[key] unless cipher[key].nil?
  end
end

letters, line = gets.chomp.split.map(&:to_i)

cipher = {}

(0..letters - 1).each do
  value, key = gets.chomp.split
  cipher[key.to_sym] = value
  cipher[value.to_sym] = key
end


(0..line - 1).each do
  string = gets.strip
  parse_response(string, cipher)
  puts string.strip
end
