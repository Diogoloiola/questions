require 'byebug'

def numeric?(lookAhead)
  lookAhead =~ /[0-9]/
end

def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end

while line = gets
  n, m = line.chomp.split.map(&:to_i)

  normal = gets.chomp
  cipher = gets.chomp

  alphabet = {}

  (0..normal.size - 1).each do |index|
    # Pode ser tando indo quanto voltando
    alphabet[cipher[index].to_sym] = normal[index]
    # ====================
    alphabet[normal[index].to_sym] = cipher[index]
  end

  (1..m).each do
    string = gets.chomp

    string.each_char do |caractere|
      if !alphabet[caractere.to_sym].nil?
        if numeric?(caractere) || !letter?(caractere)
          print alphabet[caractere.upcase.to_sym].downcase
        else
          print alphabet[caractere.upcase.to_sym]
        end
      elsif !alphabet[caractere.upcase.to_sym].nil?
        print alphabet[caractere.upcase.to_sym].downcase
      else
        print caractere
      end
    end
    puts ''
  end
  puts ''
end
