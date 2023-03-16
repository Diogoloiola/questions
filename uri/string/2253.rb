require 'byebug'
def numeric?(caractere)
  caractere =~ /[0-9]/
end

def upper?(caractere)
  caractere =~ /[A-Z]/
end

def lower?(caractere)
  caractere =~ /[a-z]/
end

def validate_string(string)
  numeric = 0
  upper = 0
  lower = 0
  string.each_char do |caractere|
    next numeric += 1 if numeric?(caractere) == 0
    next upper += 1 if upper?(caractere) == 0
    next lower += 1 if lower?(caractere) == 0

    return false if lower?(caractere).nil?
    return false if caractere == ' '
  end
  [numeric, upper, lower].all? { |value| value >= 1 } && string.size >= 6 && string.size <= 32
end

while line = gets
  line = line.chomp

  message = validate_string(line) ? 'Senha valida.' : 'Senha invalida.'

  puts message
end
