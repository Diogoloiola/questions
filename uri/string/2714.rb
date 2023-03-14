require 'byebug'

def numeric?(number)
  number =~ /[0-9]/
end

def parse_response(string)
  string.each_char.with_index do |caractere, index|
    return index if !numeric?(caractere).nil? && caractere != '0'
  end
end

line = gets.chomp.to_i

(1..line).each do
  ra = gets.chomp

  if ra.slice(0, 2) == 'RA' && ra.size == 20
    index = parse_response(ra)
    puts ra.slice(index, ra.size)
  else
    puts 'INVALID DATA'
  end
end
